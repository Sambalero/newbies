require 'test_helper'

class TimecardsControllerTest < ActionController::TestCase
  setup do
    @timecard = timecards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timecards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timecard" do
    assert_difference('Timecard.count') do
      post :create, timecard: { approved: @timecard.approved, date: @timecard.date, description: @timecard.description, hours: @timecard.hours, name: @timecard.name, rate: @timecard.rate, task: @timecard.task }
    end

    assert_redirected_to timecard_path(assigns(:timecard))
  end

  test "should show timecard" do
    get :show, id: @timecard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timecard
    assert_response :success
  end

  test "should update timecard" do
    put :update, id: @timecard, timecard: { approved: @timecard.approved, date: @timecard.date, description: @timecard.description, hours: @timecard.hours, name: @timecard.name, rate: @timecard.rate, task: @timecard.task }
    assert_redirected_to timecard_path(assigns(:timecard))
  end

  test "should destroy timecard" do
    assert_difference('Timecard.count', -1) do
      delete :destroy, id: @timecard
    end

    assert_redirected_to timecards_path
  end
end