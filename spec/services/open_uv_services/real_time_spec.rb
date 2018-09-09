# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'OpenUV services' do
  def real_time(args)
    OpenUVServices::Index.real_time_uv(lat: args.fetch(:lat, 0), lng: args.fetch(:lng, 0))
  end

  it 'Real time success' do
    geo = real_time(
      lat: -5.0820441,
      lng: -42.8004688
    )
    expect(geo.uv_time.nil?).to eq false
  end

  it 'Real time error' do
    expect { real_time(lat: 'asd-5.0820441', lng: -42.8004688) }.to raise_error
  end
end
