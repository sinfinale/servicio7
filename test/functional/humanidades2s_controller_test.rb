require 'test_helper'

class Humanidades2sControllerTest < ActionController::TestCase
  setup do
    @humanidades2 = humanidades2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:humanidades2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create humanidades2" do
    assert_difference('Humanidades2.count') do
      post :create, humanidades2: @humanidades2.attributes
    end

    assert_redirected_to humanidades2_path(assigns(:humanidades2))
  end

  test "should show humanidades2" do
    get :show, id: @humanidades2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @humanidades2
    assert_response :success
  end

  test "should update humanidades2" do
    put :update, id: @humanidades2, humanidades2: @humanidades2.attributes
    assert_redirected_to humanidades2_path(assigns(:humanidades2))
  end

  test "should destroy humanidades2" do
    assert_difference('Humanidades2.count', -1) do
      delete :destroy, id: @humanidades2
    end

    assert_redirected_to humanidades2s_path
  end
end
