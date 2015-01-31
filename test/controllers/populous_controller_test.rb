require 'test_helper'

class PopulousControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get issues" do
    get :issues
    assert_response :success
  end

  test "should get reps" do
    get :reps
    assert_response :success
  end

  test "should get details" do
    get :details
    assert_response :success
  end

  test "should get contribution" do
    get :contribution
    assert_response :success
  end

  test "should get confirm" do
    get :confirm
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
