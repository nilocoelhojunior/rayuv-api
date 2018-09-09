# frozen_string_literal: true

Types::WeatherSysType = GraphQL::ObjectType.define do
  name 'WeatherSys'
  field :message, types.Float
  field :country, types.String
  field :sunrise, types.Int
  field :sunset, types.Int
end
