# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'
require 'rails/test_unit/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RayuvApi
  class Application < Rails::Application

    HOSTNAME = Rails.application.credentials[Rails.env.to_sym][:hostname]

    config.load_defaults 5.2
    config.autoload_paths += %W[#{config.root}/lib/open_uv]
    config.autoload_paths += %W[#{config.root}/app/services]
    config.eager_load_paths += %W[#{config.root}/lib/open_uv]
    config.api_only = true

  end
end