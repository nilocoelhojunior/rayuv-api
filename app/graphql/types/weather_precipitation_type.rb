# frozen_string_literal: true

Types::WeatherPrecipitationType = GraphQL::ObjectType.define do
  name 'WeatherPrecipitation'
  
  field :speed, types.Float
  field :deg, types.Float
end
