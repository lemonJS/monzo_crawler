# frozen_string_literal: true

require_relative '../../src/lib/link_collector'
require_relative '../../src/lib/link_extractor'
require_relative '../../src/workers/link_extractor_worker'

describe LinkExtractorWorker do
  let(:link) { 'https://mylink.com' }

  let(:link_extractor) { instance_double(LinkExtractor, extract_links: []) }
  let(:link_collector) { instance_double(LinkCollector, collect!: nil, exists?: false) }

  before do
    allow(LinkCollector).to receive(:new).and_return(link_collector)
    allow(LinkExtractor).to receive(:new).and_return(link_extractor)
  end

  subject { described_class.new.perform(link) }

  context 'when the link that is enqueued has no additional links' do
    it 'does not enqueue any more jobs' do
      expect { subject }.not_to change(LinkExtractorWorker.jobs, :size)
    end

    it 'stores a record of this link and the 0 links it found' do
      subject
      expect(link_collector).to have_received(:collect!).with(link:, links: [])
    end
  end

  context 'when the link that is enqueued has additional links' do
    before do
      # The first call to extract_links will return some
      # links, subsequent calls will return an empty array
      allow(link_extractor).to receive(:extract_links).and_return(links, [])
    end

    let(:links) do
      [
        'https://mylink.com/foo',
        'https://mylink.com/bar',
        'https://mylink.com/baz',
        'https://mylink.com/what_comes_after_baz?'
      ]
    end

    it 'enqueues the links that were found' do
      subject

      enqueued_jobs = LinkExtractorWorker.jobs.map { |job| job['args'] }

      expect(enqueued_jobs).to eq(
        [
          [links[0]],
          [links[1]],
          [links[2]],
          [links[3]]
        ]
      )
    end

    it 'stores a record of this link and the links it found' do
      subject
      expect(link_collector).to have_received(:collect!).with(link:, links:)
    end

    context 'and some of the links have already been collected' do
      before do
        allow(link_collector).to receive(:exists?).with(link: 'https://mylink.com/bar').and_return(true)
        allow(link_collector).to receive(:exists?).with(link: 'https://mylink.com/baz').and_return(true)
      end

      it 'enqueues only the links that are new' do
        subject

        enqueued_jobs = LinkExtractorWorker.jobs.map { |job| job['args'] }

        expect(enqueued_jobs).to eq(
          [
            [links[0]],
            [links[3]]
          ]
        )
      end

      it 'stores a record of this link and the links it found' do
        subject
        expect(link_collector).to have_received(:collect!).with(link:, links:)
      end
    end
  end
end
