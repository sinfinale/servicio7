require 'test_helper'

class Economia2sControllerTest < ActionController::TestCase
  setup do
    @economia2 = economia2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economia2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economia2" do
    assert_difference('Economia2.count') do
      post :create, economia2: @economia2.attributes
    end

    assert_redirected_to economia2_path(assigns(:economia2))
  end

  test "should show economia2" do
    get :show, id: @economia2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @economia2
    assert_response :success
  end

  test "should update economia2" do
    put :update, id: @economia2, economia2: @economia2.attributes
    assert_redirected_to economia2_path(assigns(:economia2))
  end

  test "should destroy economia2" do
    assert_difference('Economia2.count', -1) do
      delete :destroy, id: @economia2
    end

    assert_redirected_to economia2s_path
  end
end
