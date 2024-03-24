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

    links.each do |l|
      LinkCollector.new.collect!(parent: link, link: l)
      LinkExtractorWorker.perform_async(l)
    end
  end
end
