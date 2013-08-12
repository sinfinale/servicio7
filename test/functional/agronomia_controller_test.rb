require 'test_helper'

class AgronomiaControllerTest < ActionController::TestCase
  setup do
    @agronomium = agronomia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agronomia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agronomium" do
    assert_difference('Agronomium.count') do
      post :create, agronomium: @agronomium.attributes
    end

    assert_redirected_to agronomium_path(assigns(:agronomium))
  end

  test "should show agronomium" do
    get :show, id: @agronomium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agronomium
    assert_response :success
  end

  test "should update agronomium" do
    put :update, id: @agronomium, agronomium: @agronomium.attributes
    assert_redirected_to agronomium_path(assigns(:agronomium))
  end

  test "should destroy agronomium" do
    assert_difference('Agronomium.count', -1) do
      delete :destroy, id: @agronomium
    end

    assert_redirected_to agronomia_path
  end
end
