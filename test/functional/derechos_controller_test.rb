require 'test_helper'

class DerechosControllerTest < ActionController::TestCase
  setup do
    @derecho = derechos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:derechos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create derecho" do
    assert_difference('Derecho.count') do
      post :create, derecho: @derecho.attributes
    end

    assert_redirected_to derecho_path(assigns(:derecho))
  end

  test "should show derecho" do
    get :show, id: @derecho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @derecho
    assert_response :success
  end

  test "should update derecho" do
    put :update, id: @derecho, derecho: @derecho.attributes
    assert_redirected_to derecho_path(assigns(:derecho))
  end

  test "should destroy derecho" do
    assert_difference('Derecho.count', -1) do
      delete :destroy, id: @derecho
    end

    assert_redirected_to derechos_path
  end
end
