require 'test_helper'

class FoodlogsControllerTest < ActionController::TestCase
  setup do
    @foodlog = foodlogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foodlogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foodlog" do
    assert_difference('Foodlog.count') do
      post :create, :foodlog => @foodlog.attributes
    end

    assert_redirected_to foodlog_path(assigns(:foodlog))
  end

  test "should show foodlog" do
    get :show, :id => @foodlog.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @foodlog.to_param
    assert_response :success
  end

  test "should update foodlog" do
    put :update, :id => @foodlog.to_param, :foodlog => @foodlog.attributes
    assert_redirected_to foodlog_path(assigns(:foodlog))
  end

  test "should destroy foodlog" do
    assert_difference('Foodlog.count', -1) do
      delete :destroy, :id => @foodlog.to_param
    end

    assert_redirected_to foodlogs_path
  end
end
