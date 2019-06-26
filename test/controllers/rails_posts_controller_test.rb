require 'test_helper'

class RailsPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rails_post = rails_posts(:one)
  end

  test "should get index" do
    get rails_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_rails_post_url
    assert_response :success
  end

  test "should create rails_post" do
    assert_difference('RailsPost.count') do
      post rails_posts_url, params: { rails_post: { content: @rails_post.content, title: @rails_post.title } }
    end

    assert_redirected_to rails_post_url(RailsPost.last)
  end

  test "should show rails_post" do
    get rails_post_url(@rails_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_rails_post_url(@rails_post)
    assert_response :success
  end

  test "should update rails_post" do
    patch rails_post_url(@rails_post), params: { rails_post: { content: @rails_post.content, title: @rails_post.title } }
    assert_redirected_to rails_post_url(@rails_post)
  end

  test "should destroy rails_post" do
    assert_difference('RailsPost.count', -1) do
      delete rails_post_url(@rails_post)
    end

    assert_redirected_to rails_posts_url
  end
end
