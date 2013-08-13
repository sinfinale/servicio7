require 'test_helper'

class Odontologia1sControllerTest < ActionController::TestCase
  setup do
    @odontologia1 = odontologia1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odontologia1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odontologia1" do
    assert_difference('Odontologia1.count') do
      post :create, odontologia1: @odontologia1.attributes
    end

    assert_redirected_to odontologia1_path(assigns(:odontologia1))
  end

  test "should show odontologia1" do
    get :show, id: @odontologia1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @odontologia1
    assert_response :success
  end

  test "should update odontologia1" do
    put :update, id: @odontologia1, odontologia1: @odontologia1.attributes
    assert_redirected_to odontologia1_path(assigns(:odontologia1))
  end

  test "should destroy odontologia1" do
    assert_difference('Odontologia1.count', -1) do
      delete :destroy, id: @odontologia1
    end

    assert_redirected_to odontologia1s_path
  end
end
