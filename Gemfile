# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'faraday', '~> 0.15.0'
gem 'graphql'
gem 'pg', '~> 0.18.4'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.0'
gem 'graphiql-rails'

group :development, :test do
  gem 'byebug', '~> 10.0', '>= 10.0.2', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 3.7'
  gem 'rubocop', '~> 0.54.0', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring', '~> 2.0', '>= 2.0.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
