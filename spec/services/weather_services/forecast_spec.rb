# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Weather services' do
  def current(args)
    WeatherServices::Index.current(lat: args.fetch(:lat, 0), lng: args.fetch(:lng, 0))
  end

  it 'current success' do
    weather = current(
      lat: -5.0820441,
      lng: -42.8004688
    )

    expect(weather.id.nil?).to eq false
  end

  it 'current empty' do
    expect do
      current(
        lat: 'asdasd-5.0820441',
        lng: -42.8004688
      )
    end .to raise_error
  end
end
