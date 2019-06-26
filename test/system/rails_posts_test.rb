require "application_system_test_case"

class RailsPostsTest < ApplicationSystemTestCase
  setup do
    @rails_post = rails_posts(:one)
  end

  test "visiting the index" do
    visit rails_posts_url
    assert_selector "h1", text: "Rails Posts"
  end

  test "creating a Rails post" do
    visit rails_posts_url
    click_on "New Rails Post"

    fill_in "Content", with: @rails_post.content
    fill_in "Title", with: @rails_post.title
    click_on "Create Rails post"

    assert_text "Rails post was successfully created"
    click_on "Back"
  end

  test "updating a Rails post" do
    visit rails_posts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @rails_post.content
    fill_in "Title", with: @rails_post.title
    click_on "Update Rails post"

    assert_text "Rails post was successfully updated"
    click_on "Back"
  end

  test "destroying a Rails post" do
    visit rails_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rails post was successfully destroyed"
  end
end
