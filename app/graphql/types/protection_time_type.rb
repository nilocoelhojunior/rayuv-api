# frozen_string_literal: true

Types::ProtectionTimeType = GraphQL::ObjectType.define do
  name 'ProtectionTime'
  field :from_time, types.String
  field :from_uv, types.Float
  field :to_time, types.String
  field :to_uv, types.Float
end
