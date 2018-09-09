# frozen_string_literal: true

RayuvApiSchema = GraphQL::Schema.define do
  # mutation(Types::MutationType)
  query(Types::QueryType)
  middleware(
    GraphQL::Schema::TimeoutMiddleware.new(max_seconds: 60) do |_err, query|
      Rails.logger.info("GraphQL Timeout: #{query.query_string}")
    end
  )
end
