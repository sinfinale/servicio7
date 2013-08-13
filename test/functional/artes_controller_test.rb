require 'test_helper'

class ArtesControllerTest < ActionController::TestCase
  setup do
    @arte = artes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arte" do
    assert_difference('Arte.count') do
      post :create, arte: @arte.attributes
    end

    assert_redirected_to arte_path(assigns(:arte))
  end

  test "should show arte" do
    get :show, id: @arte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arte
    assert_response :success
  end

  test "should update arte" do
    put :update, id: @arte, arte: @arte.attributes
    assert_redirected_to arte_path(assigns(:arte))
  end

  test "should destroy arte" do
    assert_difference('Arte.count', -1) do
      delete :destroy, id: @arte
    end

    assert_redirected_to artes_path
  end
end
