# frozen_string_literal: true

Types::WeatherCloudsType = GraphQL::ObjectType.define do
  name 'WeatherClouds'
  field :all, types.Float
end
