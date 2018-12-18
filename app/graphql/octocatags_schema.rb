# frozen_string_literal: true

class OctocatagsSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
