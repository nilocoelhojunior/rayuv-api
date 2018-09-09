# frozen_string_literal: true

Types::SunPositionType = GraphQL::ObjectType.define do
  name 'SunPosition'
  field :azimuth, types.Float do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :altitude, types.Float do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
end
