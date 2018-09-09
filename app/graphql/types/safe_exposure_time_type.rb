# frozen_string_literal: true
# rubocop:disable BlockLength

Types::SafeExposureTimeType = GraphQL::ObjectType.define do
  name 'SafeExposureTime'
  field :st1, types.Int do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :st2, types.Int do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :st3, types.Int do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :st4, types.Int do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :st5, types.Int do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
  field :st6, types.Int do
    resolve(
      lambda do |obj, _args, ctx|
        obj[ctx.field.name]
      end
    )
  end
end
