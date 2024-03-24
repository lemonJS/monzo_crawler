# frozen_string_literal: true

require 'redis'

# A class that abstracts the storage of links
class LinkCollector
  def initialize
    # Ideally we'd have a persistant connection to Redis
    @redis = Redis.new(url: ENV.fetch('REDIS_URL', 'redis://localhost:6379'))
  end

  def collect!(parent:, link:)
    redis.hset(key, link, parent)
  end

  def exists?(link:)
    redis.hkeys(key).include?(link)
  end

  def all
    links = redis.hgetall(key)

    # The links are stored as { link: parent }. This formats them
    # as { parent: link[] } as that's how you'd expect it to be
    links.values.each_with_object({}) do |parent, memo|
      memo[parent] = links.filter { |_, p| p == parent }.keys
    end
  end

  private

  attr_reader :redis

  def key
    # This should be a job id of some kind
    'links'
  end
end
