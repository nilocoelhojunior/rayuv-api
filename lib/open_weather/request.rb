# frozen_string_literal: true

require Rails.root.join('lib', 'open_weather', 'connection')

module OpenWeather
  # Handler Requests to OpenUV
  class Request

    class << self

      CREDENTIALS = Rails.application.credentials[Rails.env.to_sym]
      WEATHER_KEY = CREDENTIALS[:open_weaterh_map_key]

      def fetch(path, query = {})
        response = get_json(path, query)[0]
        raise GraphQL::ExecutionError, response['message'] if error?(response)
        response
      end

      def get_json(root_path, query = {})
        query = query.merge("APPID": WEATHER_KEY)
        query_string = query.map { |k, v| "#{k}=#{v}" }.join('&')
        path = query.empty? ? root_path : "#{root_path}?#{query_string}"
        response = api.get(path)
        [JSON.parse(response.body), 200]
      end

      def api
        OpenWeather::Connection.api
      end

      private

      def error?(response)
        response.try(:fetch, 'cod', nil) == '400'
      end

    end

  end
end
