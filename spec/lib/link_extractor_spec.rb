# frozen_string_literal: true

require 'httparty'
require_relative '../../src/lib/link_extractor'

describe LinkExtractor do
  describe '#extract_links' do
    let(:link) { 'https://mylink.com' }

    subject { described_class.new(link).extract_links }

    context 'when the response has a 2xx code' do
      let(:http_get_response) do
        instance_double(HTTParty::Response, body:, code: 200)
      end

      before do
        allow(HTTParty).to receive(:get).and_return(http_get_response)
      end

      context 'and there are no links in the page' do
        let(:body) do
          <<-HTML
            <html>
              <body>
                <p>No links here!</p>
              </body>
            </html>
          HTML
        end

        it 'returns an empty array' do
          expect(subject).to eq([])
        end
      end

      context 'and there are some links in the page' do
        let(:body) do
          <<-HTML
            <html>
              <body>
                <a href="https://mylink.com/link_1">Link 1</a>
                <a href="https://mylink.com/link_2">Link 2</a>
                <a href="https://mylink.com/link_3">Link 3</a>
                <a href="https://mylink.com/link_4">Link 4</a>
              </body>
            </html>
          HTML
        end

        it 'returns a list of links found' do
          expect(subject).to eq(
            [
              'https://mylink.com/link_1',
              'https://mylink.com/link_2',
              'https://mylink.com/link_3',
              'https://mylink.com/link_4'
            ]
          )
        end
      end

      context 'and there are some links in the page with duplicates' do
        let(:body) do
          <<-HTML
            <html>
              <body>
                <a href="https://mylink.com/link_1">Link 1</a>
                <a href="https://mylink.com/link_1">Link 1 again</a>
                <a href="https://mylink.com/link_3">Link 3</a>
                <a href="https://mylink.com/link_1">Link 1 for a third time, the SEO team won't be happy!</a>
              </body>
            </html>
          HTML
        end

        it 'returns a list of unique urls' do
          expect(subject).to eq(
            [
              'https://mylink.com/link_1',
              'https://mylink.com/link_3'
            ]
          )
        end
      end

      context 'and there are some links in the page from other domains or subdomains' do
        let(:body) do
          <<-HTML
            <html>
              <body>
                <a href="https://mylink.com/link_1">Link 1</a>
                <a href="https://myotherlink.com/link_2">Link 2</a>
                <a href="https://subdomain.mylink.com/link_3">Link 3</a>
              </body>
            </html>
          HTML
        end

        it 'returns a list of urls with the host included' do
          expect(subject).to eq(
            [
              'https://mylink.com/link_1'
            ]
          )
        end
      end

      context 'and there are some links in the page with relative URLs' do
        let(:body) do
          <<-HTML
            <html>
              <body>
                <a href="https://mylink.com/link_1">Link 1</a>
                <a href="/link_2">Link 2</a>
                <a href="/link_3">Link 3</a>
              </body>
            </html>
          HTML
        end

        it 'returns a list of urls with the host included' do
          expect(subject).to eq(
            [
              'https://mylink.com/link_1',
              'https://mylink.com/link_2',
              'https://mylink.com/link_3'
            ]
          )
        end
      end

      context 'and there are some links in the page with query strings and fragments' do
        let(:body) do
          <<-HTML
            <html>
              <body>
                <a href="https://mylink.com/link_1">Link 1</a>
                <a href="https://mylink.com/link_1?query_1=1&query_2=2">Link 1 again</a>
                <a href="https://mylink.com/link_1#fragment">Link 1 again again</a>
              </body>
            </html>
          HTML
        end

        it 'returns a list of urls that discard queries and fragments' do
          expect(subject).to eq(
            [
              'https://mylink.com/link_1'
            ]
          )
        end
      end
    end

    context 'when the response has a 4xx code' do
      let(:http_get_response) do
        instance_double(HTTParty::Response, code: 401)
      end

      before do
        allow(HTTParty).to receive(:get).and_return(http_get_response)
      end

      it 'returns an empty array' do
        expect(subject).to eq([])
      end
    end

    context 'when the response has a 5xx code' do
      let(:http_get_response) do
        instance_double(HTTParty::Response, code: 500)
      end

      before do
        allow(HTTParty).to receive(:get).and_return(http_get_response)
      end

      it 'returns an empty array' do
        expect(subject).to eq([])
      end
    end

    context 'when the request times out' do
      before do
        allow(HTTParty).to receive(:get).and_raise(Net::OpenTimeout)
      end

      it 'returns an empty array' do
        expect(subject).to eq([])
      end
    end
  end
end
