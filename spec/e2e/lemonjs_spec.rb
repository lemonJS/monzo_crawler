# frozen_string_literal: true

require_relative '../../src/lib/link_collector'
require_relative '../../src/workers/link_extractor_worker'

describe LinkExtractorWorker do
  let(:link) { 'https://lemonjs.uk' }

  subject { described_class.new.perform(link) }

  it 'fetches the correct links from my really old blog that I never update' do
    subject

    collected_links = LinkCollector.new.all

    expect(collected_links).to eq(
      'https://lemonjs.uk' => [
        'https://lemonjs.uk/',
        'https://lemonjs.uk/posts/a-road-trip-across-norway/',
        'https://lemonjs.uk/posts/thruxton-round-two/',
        'https://lemonjs.uk/posts/one-million-recordings-at-squeaky/',
        'https://lemonjs.uk/posts/first-track-day-at-thruxton/'
      ]
    )
  end
end
