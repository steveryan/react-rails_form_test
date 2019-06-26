require "application_system_test_case"

class HybridPostsTest < ApplicationSystemTestCase
  setup do
    @hybrid_post = hybrid_posts(:one)
  end

  test "visiting the index" do
    visit hybrid_posts_url
    assert_selector "h1", text: "Hybrid Posts"
  end

  test "creating a Hybrid post" do
    visit hybrid_posts_url
    click_on "New Hybrid Post"

    fill_in "Content", with: @hybrid_post.content
    fill_in "Title", with: @hybrid_post.title
    click_on "Create Hybrid post"

    assert_text "Hybrid post was successfully created"
    click_on "Back"
  end

  test "updating a Hybrid post" do
    visit hybrid_posts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @hybrid_post.content
    fill_in "Title", with: @hybrid_post.title
    click_on "Update Hybrid post"

    assert_text "Hybrid post was successfully updated"
    click_on "Back"
  end

  test "destroying a Hybrid post" do
    visit hybrid_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hybrid post was successfully destroyed"
  end
end
