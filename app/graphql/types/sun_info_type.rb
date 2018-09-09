# frozen_string_literal: true

Types::SunInfoType = GraphQL::ObjectType.define do
  name 'SunInfoType'
  field :sun_times, Types::SunTimesType do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end

  field :sun_position, Types::SunPositionType do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
end
