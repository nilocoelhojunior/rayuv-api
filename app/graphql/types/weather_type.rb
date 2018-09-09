# frozen_string_literal: true

Types::WeatherType = GraphQL::ObjectType.define do
  name 'Weather'

  field :name, types.String
  field :coord, Types::CoordType
  field :weather_details, types[Types::WeatherDetailsType]
  field :base, types.String
  field :main, Types::WeatherMainType
  field :wind, Types::WeatherWindType
  field :clouds, Types::WeatherCloudsType
  field :dt, types.Int
  field :sys, Types::WeatherSysType
  field :visibility, types.Int
  field :lastupdate, types.Int
end
