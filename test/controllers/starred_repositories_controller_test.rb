# frozen_string_literal: true

require 'test_helper'

class StarredRepositoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @starred_repository = starred_repositories(:one)
  end

  test 'should get index' do
    get starred_repositories_url
    assert_response :success
  end

  test 'should get new' do
    get new_starred_repository_url
    assert_response :success
  end

  test 'should create starred_repository' do
    assert_difference('StarredRepository.count') do
      post starred_repositories_url, params: { starred_repository: { description: @starred_repository.description, github_id: @starred_repository.github_id, name: @starred_repository.name, url: @starred_repository.url } }
    end

    assert_redirected_to starred_repository_url(StarredRepository.last)
  end

  test 'should show starred_repository' do
    get starred_repository_url(@starred_repository)
    assert_response :success
  end

  test 'should get edit' do
    get edit_starred_repository_url(@starred_repository)
    assert_response :success
  end

  test 'should update starred_repository' do
    patch starred_repository_url(@starred_repository), params: { starred_repository: { description: @starred_repository.description, github_id: @starred_repository.github_id, name: @starred_repository.name, url: @starred_repository.url } }
    assert_redirected_to starred_repository_url(@starred_repository)
  end

  test 'should destroy starred_repository' do
    assert_difference('StarredRepository.count', -1) do
      delete starred_repository_url(@starred_repository)
    end

    assert_redirected_to starred_repositories_url
  end
end
