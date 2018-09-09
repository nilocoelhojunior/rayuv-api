# frozen_string_literal: true

Types::WeatherDetailsType = GraphQL::ObjectType.define do
  name 'WeatherDetails'
  field :id, types.Int
  field :main, types.String
  field :description, types.String
  field :icon, types.String
end
