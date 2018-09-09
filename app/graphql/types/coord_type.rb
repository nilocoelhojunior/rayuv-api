# frozen_string_literal: true

Types::CoordType = GraphQL::ObjectType.define do
  name 'Coord'
  field :lat, types.Float
  field :lon, types.Float
end
