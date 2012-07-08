require 'test_helper'

class VisitorsControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get page2" do
    get :page2
    assert_response :success
  end

  test "should get thankYou" do
    get :thankYou
    assert_response :success
  end

  test "should get welcome" do
    get :welcome
    assert_response :success
  end

end
