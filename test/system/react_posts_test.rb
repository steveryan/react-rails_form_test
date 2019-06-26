require "application_system_test_case"

class ReactPostsTest < ApplicationSystemTestCase
  setup do
    @react_post = react_posts(:one)
  end

  test "visiting the index" do
    visit react_posts_url
    assert_selector "h1", text: "React Posts"
  end

  test "creating a React post" do
    visit react_posts_url
    click_on "New React Post"

    fill_in "Content", with: @react_post.content
    fill_in "Title", with: @react_post.title
    click_on "Create React post"

    assert_text "React post was successfully created"
    click_on "Back"
  end

  test "updating a React post" do
    visit react_posts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @react_post.content
    fill_in "Title", with: @react_post.title
    click_on "Update React post"

    assert_text "React post was successfully updated"
    click_on "Back"
  end

  test "destroying a React post" do
    visit react_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "React post was successfully destroyed"
  end
end
