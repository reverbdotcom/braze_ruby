# frozen_string_literal: true

require 'spec_helper'

describe BrazeRuby::REST::TrackUsers do
  let(:http) { double(:http) }

  let(:payload) {{
    attributes: :attributes,
    events: :events,
    purchases: :purchases
  }}

  let(:api_key) { :api_key }

  subject { described_class.new :rest_url, {}}

  before { subject.http = http }

  it 'makes an http call to the track user endpoint' do
    expect(http).to receive(:post).with '/users/track',
        payload.merge({ api_key: :api_key })

    subject.perform(api_key, payload)
  end
end
