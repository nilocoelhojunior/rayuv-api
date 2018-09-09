# frozen_string_literal: true

require Rails.root.join('lib', 'open_uv', 'connection')

module OpenUV
  # Handler Requests to OpenUV
  class Request

    class << self

      def fetch(path, query = {})
        response = get_json(path, query)[0]
        raise GraphQL::ExecutionError, response if error?(response)
        response
      end

      def get_json(root_path, query = {})
        query_string = query.map { |k, v| "#{k}=#{v}" }.join('&')
        path = query.empty? ? root_path : "#{root_path}?#{query_string}"
        response = api.get(path)
        [JSON.parse(response.body), 200]
      end

      def api
        OpenUV::Connection.api
      end

      private

      def error?(response)
        response.try(:fetch, 'error', nil) ? true : false
      end

    end

  end
end
