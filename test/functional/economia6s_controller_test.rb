require 'test_helper'

class Economia6sControllerTest < ActionController::TestCase
  setup do
    @economia6 = economia6s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economia6s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economia6" do
    assert_difference('Economia6.count') do
      post :create, economia6: @economia6.attributes
    end

    assert_redirected_to economia6_path(assigns(:economia6))
  end

  test "should show economia6" do
    get :show, id: @economia6
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @economia6
    assert_response :success
  end

  test "should update economia6" do
    put :update, id: @economia6, economia6: @economia6.attributes
    assert_redirected_to economia6_path(assigns(:economia6))
  end

  test "should destroy economia6" do
    assert_difference('Economia6.count', -1) do
      delete :destroy, id: @economia6
    end

    assert_redirected_to economia6s_path
  end
end
