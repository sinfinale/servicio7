require 'test_helper'

class Odontologia3sControllerTest < ActionController::TestCase
  setup do
    @odontologia3 = odontologia3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odontologia3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odontologia3" do
    assert_difference('Odontologia3.count') do
      post :create, odontologia3: @odontologia3.attributes
    end

    assert_redirected_to odontologia3_path(assigns(:odontologia3))
  end

  test "should show odontologia3" do
    get :show, id: @odontologia3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @odontologia3
    assert_response :success
  end

  test "should update odontologia3" do
    put :update, id: @odontologia3, odontologia3: @odontologia3.attributes
    assert_redirected_to odontologia3_path(assigns(:odontologia3))
  end

  test "should destroy odontologia3" do
    assert_difference('Odontologia3.count', -1) do
      delete :destroy, id: @odontologia3
    end

    assert_redirected_to odontologia3s_path
  end
end
