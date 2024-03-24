# frozen_string_literal: true

require 'redis'

# A class that abstracts the storage of links
class LinkCollector
  def self.redis
    # A hacky way of having a persistant redis connection
    @redis ||= Redis.new(url: ENV.fetch('REDIS_URL', 'redis://localhost:6379'))
  end

  def collect!(link:, links:)
    self.class.redis.hset(key, link, links.join(','))
  end

  def exists?(link:)
    self.class.redis.hexists(key, link)
  end

  def all
    # Split the links as they are stored as strings
    self.class.redis.hgetall(key).transform_values { |v| v.split(',') }
  end

  private

  attr_reader :redis

  def key
    # This should be a job id of some kind
    'links'
  end
end
