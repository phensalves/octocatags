require "application_system_test_case"

class GithubUsersTest < ApplicationSystemTestCase
  setup do
    @github_user = github_users(:one)
  end

  test "visiting the index" do
    visit github_users_url
    assert_selector "h1", text: "Github Users"
  end

  test "creating a Github user" do
    visit github_users_url
    click_on "New Github User"

    fill_in "Github", with: @github_user.github_id
    fill_in "Login", with: @github_user.login
    click_on "Create Github user"

    assert_text "Github user was successfully created"
    click_on "Back"
  end

  test "updating a Github user" do
    visit github_users_url
    click_on "Edit", match: :first

    fill_in "Github", with: @github_user.github_id
    fill_in "Login", with: @github_user.login
    click_on "Update Github user"

    assert_text "Github user was successfully updated"
    click_on "Back"
  end

  test "destroying a Github user" do
    visit github_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Github user was successfully destroyed"
  end
end
