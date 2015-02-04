require 'test_helper'

class RestaurantOneControllerTest < ActionController::TestCase
  test "should get Restaurant" do
    get :Restaurant
    assert_response :success
  end

  test "should get seat1" do
    get :seat1
    assert_response :success
  end

  test "should get seat2" do
    get :seat2
    assert_response :success
  end

end
