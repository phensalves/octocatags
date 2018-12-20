# frozen_string_literal: true

json.extract! starred_repository, :id, :github_id, :name, :description, :url, :created_at, :updated_at
json.url starred_repository_url(starred_repository, format: :json)
