require 'test_helper'

class NodeCommentsControllerTest < ActionController::TestCase
  setup do
    @node_comment = node_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:node_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create node_comment" do
    assert_difference('NodeComment.count') do
      post :create, node_comment: @node_comment.attributes
    end

    assert_redirected_to node_comment_path(assigns(:node_comment))
  end

  test "should show node_comment" do
    get :show, id: @node_comment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @node_comment.to_param
    assert_response :success
  end

  test "should update node_comment" do
    put :update, id: @node_comment.to_param, node_comment: @node_comment.attributes
    assert_redirected_to node_comment_path(assigns(:node_comment))
  end

  test "should destroy node_comment" do
    assert_difference('NodeComment.count', -1) do
      delete :destroy, id: @node_comment.to_param
    end

    assert_redirected_to node_comments_path
  end
end
