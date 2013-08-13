require 'test_helper'

class Economia3sControllerTest < ActionController::TestCase
  setup do
    @economia3 = economia3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economia3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economia3" do
    assert_difference('Economia3.count') do
      post :create, economia3: @economia3.attributes
    end

    assert_redirected_to economia3_path(assigns(:economia3))
  end

  test "should show economia3" do
    get :show, id: @economia3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @economia3
    assert_response :success
  end

  test "should update economia3" do
    put :update, id: @economia3, economia3: @economia3.attributes
    assert_redirected_to economia3_path(assigns(:economia3))
  end

  test "should destroy economia3" do
    assert_difference('Economia3.count', -1) do
      delete :destroy, id: @economia3
    end

    assert_redirected_to economia3s_path
  end
end
