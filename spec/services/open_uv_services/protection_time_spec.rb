# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'OpenUV services' do
  def protection(args)
    OpenUVServices::Index.protection_time(
      lat: args.fetch(:lat, 0),
      lng: args.fetch(:lng, 0)
    )
  end

  it 'protection success' do
    geo = protection(
      lat: -5.0820441,
      lng: -42.8004688
    )
    expect(geo.from_uv.nil?).to eq false
  end

  it 'protection empty' do
    geo = protection(
      lat: 'asdasd-5.0820441',
      lng: -42.8004688
    )

    expect(geo.from_time.nil?).to eq true
  end
end
