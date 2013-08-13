require 'test_helper'

class Humanidades3sControllerTest < ActionController::TestCase
  setup do
    @humanidades3 = humanidades3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:humanidades3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create humanidades3" do
    assert_difference('Humanidades3.count') do
      post :create, humanidades3: @humanidades3.attributes
    end

    assert_redirected_to humanidades3_path(assigns(:humanidades3))
  end

  test "should show humanidades3" do
    get :show, id: @humanidades3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @humanidades3
    assert_response :success
  end

  test "should update humanidades3" do
    put :update, id: @humanidades3, humanidades3: @humanidades3.attributes
    assert_redirected_to humanidades3_path(assigns(:humanidades3))
  end

  test "should destroy humanidades3" do
    assert_difference('Humanidades3.count', -1) do
      delete :destroy, id: @humanidades3
    end

    assert_redirected_to humanidades3s_path
  end
end
