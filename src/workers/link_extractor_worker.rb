# frozen_string_literal: true

require 'sidekiq'
require_relative '../lib/link_collector'
require_relative '../lib/link_extractor'

# Consume links from the queue, fetch all links on that
# page, and then queue all of the links that have not been
# collected previously
class LinkExtractorWorker
  include Sidekiq::Job

  def perform(link)
    links = LinkExtractor.new(link).extract_links

    # Store a record of the link and all the links found
    link_collector.collect!(link:, links:)

    # For each of the links found, enqueue those that have
    # not been processed yet
    links.each do |l|
      LinkExtractorWorker.perform_async(l) unless link_collector.exists?(link: l)
    end
  end

  private

  def link_collector
    @link_collector || LinkCollector.new
  end
end
