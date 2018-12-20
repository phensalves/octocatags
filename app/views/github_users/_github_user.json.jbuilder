json.extract! github_user, :id, :login, :github_id, :created_at, :updated_at
json.url github_user_url(github_user, format: :json)
