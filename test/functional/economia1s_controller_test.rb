require 'test_helper'

class Economia1sControllerTest < ActionController::TestCase
  setup do
    @economia1 = economia1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economia1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economia1" do
    assert_difference('Economia1.count') do
      post :create, economia1: @economia1.attributes
    end

    assert_redirected_to economia1_path(assigns(:economia1))
  end

  test "should show economia1" do
    get :show, id: @economia1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @economia1
    assert_response :success
  end

  test "should update economia1" do
    put :update, id: @economia1, economia1: @economia1.attributes
    assert_redirected_to economia1_path(assigns(:economia1))
  end

  test "should destroy economia1" do
    assert_difference('Economia1.count', -1) do
      delete :destroy, id: @economia1
    end

    assert_redirected_to economia1s_path
  end
end
