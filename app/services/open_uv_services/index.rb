# frozen_string_literal: true

require Rails.root.join('lib', 'open_uv', 'request')

module OpenUVServices
  # Handler OpenUV index request
  class Index < Base

    def self.real_time_uv(query = {})
      response = OpenUV::Request.fetch('uv', query)
      Geolocation.new(response.fetch('result', {}))
    end

    def self.forecast(query = {})
      response = OpenUV::Request.fetch('forecast', query)
      forecast = response.fetch('result', []).map do |item|
        Geolocation.new(item)
      end
      forecast
    end

    def self.protection_time(query = {})
      response = OpenUV::Request.fetch('protection', query)
      ProtectionTime.new(response.fetch('result', {}))
    end

    def initialize(args = {})
      super(args)
      self.index = parse_index(args)
    end

  end
end
