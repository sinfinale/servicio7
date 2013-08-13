require 'test_helper'

class AgronomiaquimicasControllerTest < ActionController::TestCase
  setup do
    @agronomiaquimica = agronomiaquimicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agronomiaquimicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agronomiaquimica" do
    assert_difference('Agronomiaquimica.count') do
      post :create, agronomiaquimica: @agronomiaquimica.attributes
    end

    assert_redirected_to agronomiaquimica_path(assigns(:agronomiaquimica))
  end

  test "should show agronomiaquimica" do
    get :show, id: @agronomiaquimica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agronomiaquimica
    assert_response :success
  end

  test "should update agronomiaquimica" do
    put :update, id: @agronomiaquimica, agronomiaquimica: @agronomiaquimica.attributes
    assert_redirected_to agronomiaquimica_path(assigns(:agronomiaquimica))
  end

  test "should destroy agronomiaquimica" do
    assert_difference('Agronomiaquimica.count', -1) do
      delete :destroy, id: @agronomiaquimica
    end

    assert_redirected_to agronomiaquimicas_path
  end
end
