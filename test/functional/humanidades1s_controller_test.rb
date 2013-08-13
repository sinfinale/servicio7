require 'test_helper'

class Humanidades1sControllerTest < ActionController::TestCase
  setup do
    @humanidades1 = humanidades1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:humanidades1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create humanidades1" do
    assert_difference('Humanidades1.count') do
      post :create, humanidades1: @humanidades1.attributes
    end

    assert_redirected_to humanidades1_path(assigns(:humanidades1))
  end

  test "should show humanidades1" do
    get :show, id: @humanidades1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @humanidades1
    assert_response :success
  end

  test "should update humanidades1" do
    put :update, id: @humanidades1, humanidades1: @humanidades1.attributes
    assert_redirected_to humanidades1_path(assigns(:humanidades1))
  end

  test "should destroy humanidades1" do
    assert_difference('Humanidades1.count', -1) do
      delete :destroy, id: @humanidades1
    end

    assert_redirected_to humanidades1s_path
  end
end
