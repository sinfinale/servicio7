require 'test_helper'

class OdontologiaimprentaControllerTest < ActionController::TestCase
  setup do
    @odontologiaimprentum = odontologiaimprenta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odontologiaimprenta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odontologiaimprentum" do
    assert_difference('Odontologiaimprentum.count') do
      post :create, odontologiaimprentum: @odontologiaimprentum.attributes
    end

    assert_redirected_to odontologiaimprentum_path(assigns(:odontologiaimprentum))
  end

  test "should show odontologiaimprentum" do
    get :show, id: @odontologiaimprentum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @odontologiaimprentum
    assert_response :success
  end

  test "should update odontologiaimprentum" do
    put :update, id: @odontologiaimprentum, odontologiaimprentum: @odontologiaimprentum.attributes
    assert_redirected_to odontologiaimprentum_path(assigns(:odontologiaimprentum))
  end

  test "should destroy odontologiaimprentum" do
    assert_difference('Odontologiaimprentum.count', -1) do
      delete :destroy, id: @odontologiaimprentum
    end

    assert_redirected_to odontologiaimprenta_path
  end
end
