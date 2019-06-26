require 'test_helper'

class ReactPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @react_post = react_posts(:one)
  end

  test "should get index" do
    get react_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_react_post_url
    assert_response :success
  end

  test "should create react_post" do
    assert_difference('ReactPost.count') do
      post react_posts_url, params: { react_post: { content: @react_post.content, title: @react_post.title } }
    end

    assert_redirected_to react_post_url(ReactPost.last)
  end

  test "should show react_post" do
    get react_post_url(@react_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_react_post_url(@react_post)
    assert_response :success
  end

  test "should update react_post" do
    patch react_post_url(@react_post), params: { react_post: { content: @react_post.content, title: @react_post.title } }
    assert_redirected_to react_post_url(@react_post)
  end

  test "should destroy react_post" do
    assert_difference('ReactPost.count', -1) do
      delete react_post_url(@react_post)
    end

    assert_redirected_to react_posts_url
  end
end
