# frozen_string_literal: true

Types::ForecastType = GraphQL::ObjectType.define do
  name 'Forecast'
  field :uv, types.Float
  field :uv_time, types.String
end
