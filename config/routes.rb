# frozen_string_literal: true

Rails.application.routes.draw do
  resources :github_users
  resources :starred_repositories
  get "/", to: "starred_repositories#get_repos"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
