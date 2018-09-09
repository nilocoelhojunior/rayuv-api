# frozen_string_literal: true

Types::RealTimeType = GraphQL::ObjectType.define do
  name 'RealTime'
  field :uv, types.Float
  field :uv_time, types.String
  field :uv_max, types.Float
  field :uv_max_time, types.String
  field :ozone, types.Float
  field :ozone_time, types.String
  field :safe_exposure_time, Types::SafeExposureTimeType
  field :sun_info, Types::SunInfoType
end
