# frozen_string_literal: true

require Rails.root.join('lib', 'open_weather', 'request')

module WeatherServices
  # Handler OpenUV index request
  class Index < Base

    def initialize(args = {})
      super(args)
      self.index = parse_index(args)
    end

    def self.current(query = {})
      query = {
        lat: query.fetch(:lat, 0),
        lon: query.fetch(:lng, 0)
      }
      response = OpenWeather::Request.fetch('weather', query)
      format_current(response)
    end

    def self.format_current(response)
      details = response.fetch('weather', []).map do |item|
        WeatherDetail.new(item)
      end
      weather = Weather.new(response.except('weather'))
      weather.weather_details << details
      weather
    end

  end
end
