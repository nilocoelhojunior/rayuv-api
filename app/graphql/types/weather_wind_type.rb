# frozen_string_literal: true

Types::WeatherWindType = GraphQL::ObjectType.define do
  name 'WeatherWind'
  field :speed, types.Float
  field :deg, types.Float
end
