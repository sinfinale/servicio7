require 'test_helper'

class Economia5sControllerTest < ActionController::TestCase
  setup do
    @economia5 = economia5s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economia5s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economia5" do
    assert_difference('Economia5.count') do
      post :create, economia5: @economia5.attributes
    end

    assert_redirected_to economia5_path(assigns(:economia5))
  end

  test "should show economia5" do
    get :show, id: @economia5
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @economia5
    assert_response :success
  end

  test "should update economia5" do
    put :update, id: @economia5, economia5: @economia5.attributes
    assert_redirected_to economia5_path(assigns(:economia5))
  end

  test "should destroy economia5" do
    assert_difference('Economia5.count', -1) do
      delete :destroy, id: @economia5
    end

    assert_redirected_to economia5s_path
  end
end
