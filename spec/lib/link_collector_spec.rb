# frozen_string_literal: true

require_relative '../../src/lib/link_collector'

describe LinkCollector do
  let(:instance) { described_class.new }

  describe '#collect!' do
    let(:link) { 'https://mylink.com' }

    subject { instance.collect!(link) }

    it 'stores the link' do
      expect { subject }.to change { instance.exists?(link) }.from(false).to(true)
    end
  end

  describe '#exists?' do
    let(:link) { 'https://mylink.com' }

    subject { instance.exists?(link) }

    context 'when the link exists' do
      before { instance.collect!(link) }

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
    let(:links) do
      [
        'https://mylink.com',
        'https://mylink.com/1',
        'https://mylink.com/2',
        'https://mylink.com/3'
      ]
    end

    subject { instance.all }

    before do
      links.each { |link| instance.collect!(link) }
    end

    it 'returns a list of links that have been collected' do
      expect(subject).to match_array(links)
    end
  end
end
