require "application_system_test_case"

class StarredRepositoriesTest < ApplicationSystemTestCase
  setup do
    @starred_repository = starred_repositories(:one)
  end

  test "visiting the index" do
    visit starred_repositories_url
    assert_selector "h1", text: "Starred Repositories"
  end

  test "creating a Starred repository" do
    visit starred_repositories_url
    click_on "New Starred Repository"

    fill_in "Description", with: @starred_repository.description
    fill_in "Github", with: @starred_repository.github_id
    fill_in "Name", with: @starred_repository.name
    fill_in "Url", with: @starred_repository.url
    click_on "Create Starred repository"

    assert_text "Starred repository was successfully created"
    click_on "Back"
  end

  test "updating a Starred repository" do
    visit starred_repositories_url
    click_on "Edit", match: :first

    fill_in "Description", with: @starred_repository.description
    fill_in "Github", with: @starred_repository.github_id
    fill_in "Name", with: @starred_repository.name
    fill_in "Url", with: @starred_repository.url
    click_on "Update Starred repository"

    assert_text "Starred repository was successfully updated"
    click_on "Back"
  end

  test "destroying a Starred repository" do
    visit starred_repositories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Starred repository was successfully destroyed"
  end
end
