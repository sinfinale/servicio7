require 'test_helper'

class AuditoriummarmolsControllerTest < ActionController::TestCase
  setup do
    @auditoriummarmol = auditoriummarmols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auditoriummarmols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auditoriummarmol" do
    assert_difference('Auditoriummarmol.count') do
      post :create, auditoriummarmol: @auditoriummarmol.attributes
    end

    assert_redirected_to auditoriummarmol_path(assigns(:auditoriummarmol))
  end

  test "should show auditoriummarmol" do
    get :show, id: @auditoriummarmol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auditoriummarmol
    assert_response :success
  end

  test "should update auditoriummarmol" do
    put :update, id: @auditoriummarmol, auditoriummarmol: @auditoriummarmol.attributes
    assert_redirected_to auditoriummarmol_path(assigns(:auditoriummarmol))
  end

  test "should destroy auditoriummarmol" do
    assert_difference('Auditoriummarmol.count', -1) do
      delete :destroy, id: @auditoriummarmol
    end

    assert_redirected_to auditoriummarmols_path
  end
end
