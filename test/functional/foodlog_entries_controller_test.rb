require 'test_helper'

class FoodlogEntriesControllerTest < ActionController::TestCase
  setup do
    @foodlog_entry = foodlog_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foodlog_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foodlog_entry" do
    assert_difference('FoodlogEntry.count') do
      post :create, :foodlog_entry => @foodlog_entry.attributes
    end

    assert_redirected_to foodlog_entry_path(assigns(:foodlog_entry))
  end

  test "should show foodlog_entry" do
    get :show, :id => @foodlog_entry.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @foodlog_entry.to_param
    assert_response :success
  end

  test "should update foodlog_entry" do
    put :update, :id => @foodlog_entry.to_param, :foodlog_entry => @foodlog_entry.attributes
    assert_redirected_to foodlog_entry_path(assigns(:foodlog_entry))
  end

  test "should destroy foodlog_entry" do
    assert_difference('FoodlogEntry.count', -1) do
      delete :destroy, :id => @foodlog_entry.to_param
    end

    assert_redirected_to foodlog_entries_path
  end
end
