module Api
  class GithubManager

    def initialize options={}
      @base_url = "https://api.github.com/users/#{options[:user]}/starred" 
    end

    def get_starred_repos
      response = HTTParty.get(@base_url)
      response = JSON.parse response.body
      response = build_repo_hash(response)
    end

    private

    def build_repo_hash response
      repositories = []
      response.map { |repository| repositories.push({id: repository["id"], name: repository["name"], description: repository["description"], url: repository["url"], language: repository["language"]}) }
      repositories
    end
  end
end