# frozen_string_literal: true
# rubocop:disable BlockLength

Types::SunTimesType = GraphQL::ObjectType.define do
  name 'SunTimes'
  field :sunrise, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :sunriseEnd, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :goldenHourEnd, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :solarNoon, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :goldenHour, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :sunsetStart, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :sunset, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :dusk, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :nauticalDusk, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :night, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :nadir, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :nightEnd, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :nauticalDawn, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :dawn, types.String do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
end
