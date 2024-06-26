# frozen_string_literal: true

require 'sidekiq/testing'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.before(:each) do
    Sidekiq::Worker.clear_all
    Redis.new(url: ENV.fetch('REDIS_URL', 'redis://localhost:6379')).flushall
  end
end
