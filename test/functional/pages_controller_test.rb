require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get zgodbe" do
    get :zgodbe
    assert_response :success
  end

end
