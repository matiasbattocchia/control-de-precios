require 'test_helper'

class PricesControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
