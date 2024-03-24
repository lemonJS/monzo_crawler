# frozen_string_literal: true

require 'logger'
require 'httparty'
require 'nokogiri'

# Make a HTTP request to a given link and extract all links on
# that page. Filter out links that have already been collected or
# are from different domains. Prepend the host to relative links.
# There are *many* trade offs here, they are documented in the
# README.
class LinkExtractor
  def initialize(link)
    @link = link
    @uri = URI(link)
  end

  def extract_links
    links = valid_links
            .reject { |link| known_link?(link) }
            .filter { |link| matching_host?(link) }
            .uniq

    # This is a bit messy, but tries to print the links out in
    # a readable way
    logger.info("Request to #{link} found #{links.size} more links:\n- #{links.join("\n- ")}") unless links.empty?

    links
  end

  private

  attr_reader :link, :uri

  def matching_host?(link)
    uri.host == URI(link).host
  end

  def known_link?(link)
    LinkCollector.new.exists?(link:)
  end

  def valid_links
    doc = Nokogiri::HTML(html)

    # This is not strictly _all_ links, as it does not include
    # links that appear in meta tags or other places
    doc.css('a').map { |link| validate_href(link['href'].to_s) }.compact
  end

  def validate_href(href)
    validated_uri = URI(href)

    # Assign the host and scheme of the parent link if the
    # link is relative
    validated_uri.host = uri.host unless validated_uri.host
    validated_uri.scheme = uri.scheme unless validated_uri.scheme

    # Strip the query string and any fragments as they will
    # create duplicates
    validated_uri.query = nil
    validated_uri.fragment = nil

    validated_uri.to_s
  rescue URI::InvalidURIError
    nil
  end

  def html
    response = HTTParty.get(link, follow_redirects: true, timeout: 5)

    if response.code != 200
      logger.error("Received a #{response.code} trying to fetch #{link}")
      return ''
    end

    response.body
  rescue Net::OpenTimeout
    logger.error("Request to #{link} timed out")
    ''
  end

  def logger
    @logger ||= Logger.new($stdout)
  end
end
