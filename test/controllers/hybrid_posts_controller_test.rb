require 'test_helper'

class HybridPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hybrid_post = hybrid_posts(:one)
  end

  test "should get index" do
    get hybrid_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_hybrid_post_url
    assert_response :success
  end

  test "should create hybrid_post" do
    assert_difference('HybridPost.count') do
      post hybrid_posts_url, params: { hybrid_post: { content: @hybrid_post.content, title: @hybrid_post.title } }
    end

    assert_redirected_to hybrid_post_url(HybridPost.last)
  end

  test "should show hybrid_post" do
    get hybrid_post_url(@hybrid_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_hybrid_post_url(@hybrid_post)
    assert_response :success
  end

  test "should update hybrid_post" do
    patch hybrid_post_url(@hybrid_post), params: { hybrid_post: { content: @hybrid_post.content, title: @hybrid_post.title } }
    assert_redirected_to hybrid_post_url(@hybrid_post)
  end

  test "should destroy hybrid_post" do
    assert_difference('HybridPost.count', -1) do
      delete hybrid_post_url(@hybrid_post)
    end

    assert_redirected_to hybrid_posts_url
  end
end
