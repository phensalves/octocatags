module Api
  class GithubManager

    def initialize options={}
      @base_url = "https://api.github.com/users/#{options[:user]}/starred" 
    end

    private

    def get_starred_repos
      response = HTTParty.get(@base_url)
      JSON.parse response.body
    end
  end
end