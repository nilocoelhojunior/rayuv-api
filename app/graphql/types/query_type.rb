# frozen_string_literal: true
# rubocop:disable Metrics/BlockLength

Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :real_time, Types::RealTimeType do
    argument :lat, !types.Float
    argument :lng, !types.Float

    resolve(
      lambda do |_obj, args, _ctx|
        OpenUVServices::Index.real_time_uv(
          lat: args.lat || 0,
          lng: args.lng || 0
        )
      end
    )
  end

  field :forecast, types[Types::ForecastType] do
    argument :lat, !types.Float
    argument :lng, !types.Float

    resolve(
      lambda do |_obj, args, _ctx|
        OpenUVServices::Index.forecast(
          lat: args.lat || 0,
          lng: args.lng || 0
        )
      end
    )
  end

  field :protection_time, Types::ProtectionTimeType do
    argument :lat, !types.Float
    argument :lng, !types.Float

    resolve(
      lambda do |_obj, args, _ctx|
        OpenUVServices::Index.protection_time(
          lat: args.lat || 0,
          lng: args.lng || 0
        )
      end
    )
  end

  field :weather, Types::WeatherType do
    argument :lat, !types.Float
    argument :lng, !types.Float

    resolve(
      lambda do |_obj, args, _ctx|
        WeatherServices::Index.current(
          lat: args.lat || 0,
          lng: args.lng || 0
        )
      end
    )
  end
end
