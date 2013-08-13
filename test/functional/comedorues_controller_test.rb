require 'test_helper'

class ComedoruesControllerTest < ActionController::TestCase
  setup do
    @comedorue = comedorues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comedorues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comedorue" do
    assert_difference('Comedorue.count') do
      post :create, comedorue: @comedorue.attributes
    end

    assert_redirected_to comedorue_path(assigns(:comedorue))
  end

  test "should show comedorue" do
    get :show, id: @comedorue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comedorue
    assert_response :success
  end

  test "should update comedorue" do
    put :update, id: @comedorue, comedorue: @comedorue.attributes
    assert_redirected_to comedorue_path(assigns(:comedorue))
  end

  test "should destroy comedorue" do
    assert_difference('Comedorue.count', -1) do
      delete :destroy, id: @comedorue
    end

    assert_redirected_to comedorues_path
  end
end
