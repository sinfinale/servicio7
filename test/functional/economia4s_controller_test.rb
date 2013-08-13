require 'test_helper'

class Economia4sControllerTest < ActionController::TestCase
  setup do
    @economia4 = economia4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economia4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economia4" do
    assert_difference('Economia4.count') do
      post :create, economia4: @economia4.attributes
    end

    assert_redirected_to economia4_path(assigns(:economia4))
  end

  test "should show economia4" do
    get :show, id: @economia4
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @economia4
    assert_response :success
  end

  test "should update economia4" do
    put :update, id: @economia4, economia4: @economia4.attributes
    assert_redirected_to economia4_path(assigns(:economia4))
  end

  test "should destroy economia4" do
    assert_difference('Economia4.count', -1) do
      delete :destroy, id: @economia4
    end

    assert_redirected_to economia4s_path
  end
end
