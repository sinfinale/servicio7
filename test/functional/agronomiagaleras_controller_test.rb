require 'test_helper'

class AgronomiagalerasControllerTest < ActionController::TestCase
  setup do
    @agronomiagalera = agronomiagaleras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agronomiagaleras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agronomiagalera" do
    assert_difference('Agronomiagalera.count') do
      post :create, agronomiagalera: @agronomiagalera.attributes
    end

    assert_redirected_to agronomiagalera_path(assigns(:agronomiagalera))
  end

  test "should show agronomiagalera" do
    get :show, id: @agronomiagalera
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agronomiagalera
    assert_response :success
  end

  test "should update agronomiagalera" do
    put :update, id: @agronomiagalera, agronomiagalera: @agronomiagalera.attributes
    assert_redirected_to agronomiagalera_path(assigns(:agronomiagalera))
  end

  test "should destroy agronomiagalera" do
    assert_difference('Agronomiagalera.count', -1) do
      delete :destroy, id: @agronomiagalera
    end

    assert_redirected_to agronomiagaleras_path
  end
end
