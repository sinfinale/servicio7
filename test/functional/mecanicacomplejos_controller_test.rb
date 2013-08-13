require 'test_helper'

class MecanicacomplejosControllerTest < ActionController::TestCase
  setup do
    @mecanicacomplejo = mecanicacomplejos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mecanicacomplejos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mecanicacomplejo" do
    assert_difference('Mecanicacomplejo.count') do
      post :create, mecanicacomplejo: @mecanicacomplejo.attributes
    end

    assert_redirected_to mecanicacomplejo_path(assigns(:mecanicacomplejo))
  end

  test "should show mecanicacomplejo" do
    get :show, id: @mecanicacomplejo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mecanicacomplejo
    assert_response :success
  end

  test "should update mecanicacomplejo" do
    put :update, id: @mecanicacomplejo, mecanicacomplejo: @mecanicacomplejo.attributes
    assert_redirected_to mecanicacomplejo_path(assigns(:mecanicacomplejo))
  end

  test "should destroy mecanicacomplejo" do
    assert_difference('Mecanicacomplejo.count', -1) do
      delete :destroy, id: @mecanicacomplejo
    end

    assert_redirected_to mecanicacomplejos_path
  end
end
