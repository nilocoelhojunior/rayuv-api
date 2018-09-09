# frozen_string_literal: true

Types::WeatherMainType = GraphQL::ObjectType.define do
  name 'WeatherMain'
  field :temp, types.Float
  field :pressure, types.Float
  field :humidity, types.Float
  field :temp_min, types.Float
  field :temp_max, types.Float
  field :sea_level, types.Float
  field :grnd_level, types.Float
end
