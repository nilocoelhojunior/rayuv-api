# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'OpenUV services' do
  def forecast(args)
    OpenUVServices::Index.forecast(lat: args.fetch(:lat, 0), lng: args.fetch(:lng, 0))
  end

  it 'Forecast success' do
    geo = forecast(
      lat: -5.0820441,
      lng: -42.8004688
    )
    expect(geo[0].uv_time.nil?).to eq false
  end

  it 'Forecast empty' do
    geo = forecast(
      lat: 'asdasd-5.0820441',
      lng: -42.8004688
    )
    expect(geo.count).to eq 0
  end
end
