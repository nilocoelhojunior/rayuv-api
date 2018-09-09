# frozen_string_literal: true

require 'faraday'
require 'json'

module OpenUV
  # Connection with OpenUV
  class Connection

    BASE = 'https://api.openuv.io/api/v1'
    OPENUV_KEY = Rails.application.credentials[Rails.env.to_sym][:openuv_key]

    def self.api
      Faraday.new(url: BASE) do |faraday|
        faraday.response :logger
        faraday.adapter Faraday.default_adapter
        faraday.headers['Content-Type'] = 'application/json'
        faraday.headers['x-access-token'] = OPENUV_KEY
      end
    end

  end
end
