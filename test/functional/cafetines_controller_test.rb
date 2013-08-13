require 'test_helper'

class CafetinesControllerTest < ActionController::TestCase
  setup do
    @cafetine = cafetines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cafetines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cafetine" do
    assert_difference('Cafetine.count') do
      post :create, cafetine: @cafetine.attributes
    end

    assert_redirected_to cafetine_path(assigns(:cafetine))
  end

  test "should show cafetine" do
    get :show, id: @cafetine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cafetine
    assert_response :success
  end

  test "should update cafetine" do
    put :update, id: @cafetine, cafetine: @cafetine.attributes
    assert_redirected_to cafetine_path(assigns(:cafetine))
  end

  test "should destroy cafetine" do
    assert_difference('Cafetine.count', -1) do
      delete :destroy, id: @cafetine
    end

    assert_redirected_to cafetines_path
  end
end
