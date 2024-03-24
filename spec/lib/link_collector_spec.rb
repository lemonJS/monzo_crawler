# frozen_string_literal: true

require_relative '../../src/lib/link_collector'

describe LinkCollector do
  let(:link) { 'https://mylink.com' }

  let(:links) do
    [
      'https://mylink.com/1',
      'https://mylink.com/2',
      'https://mylink.com/3',
      'https://mylink.com/4'
    ]
  end

  let(:instance) { described_class.new }

  describe '#collect!' do
    subject { instance.collect!(link:, links:) }

    it 'stores the link' do
      expect { subject }.to change { instance.exists?(link:) }.from(false).to(true)
    end
  end

  describe '#exists?' do
    subject { instance.exists?(link:) }

    context 'when the link exists' do
      before { instance.collect!(link:, links: []) }

      it 'returns true' do
        expect(subject).to eq(true)
      end
    end

    context 'when the link does not exist' do
      it 'returns false' do
        expect(subject).to eq(false)
      end
    end
  end

  describe '#all' do
    subject { instance.all }

    before do
      instance.collect!(link:, links:)
    end

    it 'returns a hash of links with the links found' do
      expect(subject).to eq(
        'https://mylink.com' => [
          'https://mylink.com/1',
          'https://mylink.com/2',
          'https://mylink.com/3',
          'https://mylink.com/4'
        ]
      )
    end
  end
end
