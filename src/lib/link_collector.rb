# frozen_string_literal: true

require 'redis'

# A class that abstracts the storage of links
class LinkCollector
  def initialize
    # Ideally we'd have a persistant connection to Redis
    @redis = Redis.new(url: ENV.fetch('REDIS_URL', 'redis://localhost:6379'))
  end

  def collect!(link)
    redis.sadd(key, link)
  end

  def exists?(link)
    redis.sismember(key, link)
  end

  def all
    redis.smembers(key)
  end

  private

  attr_reader :redis

  def key
    'links'
  end
end
