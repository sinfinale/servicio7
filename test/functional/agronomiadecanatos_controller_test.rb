require 'test_helper'

class AgronomiadecanatosControllerTest < ActionController::TestCase
  setup do
    @agronomiadecanato = agronomiadecanatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agronomiadecanatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agronomiadecanato" do
    assert_difference('Agronomiadecanato.count') do
      post :create, agronomiadecanato: @agronomiadecanato.attributes
    end

    assert_redirected_to agronomiadecanato_path(assigns(:agronomiadecanato))
  end

  test "should show agronomiadecanato" do
    get :show, id: @agronomiadecanato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agronomiadecanato
    assert_response :success
  end

  test "should update agronomiadecanato" do
    put :update, id: @agronomiadecanato, agronomiadecanato: @agronomiadecanato.attributes
    assert_redirected_to agronomiadecanato_path(assigns(:agronomiadecanato))
  end

  test "should destroy agronomiadecanato" do
    assert_difference('Agronomiadecanato.count', -1) do
      delete :destroy, id: @agronomiadecanato
    end

    assert_redirected_to agronomiadecanatos_path
  end
end
