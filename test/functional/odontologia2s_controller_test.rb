require 'test_helper'

class Odontologia2sControllerTest < ActionController::TestCase
  setup do
    @odontologia2 = odontologia2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odontologia2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odontologia2" do
    assert_difference('Odontologia2.count') do
      post :create, odontologia2: @odontologia2.attributes
    end

    assert_redirected_to odontologia2_path(assigns(:odontologia2))
  end

  test "should show odontologia2" do
    get :show, id: @odontologia2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @odontologia2
    assert_response :success
  end

  test "should update odontologia2" do
    put :update, id: @odontologia2, odontologia2: @odontologia2.attributes
    assert_redirected_to odontologia2_path(assigns(:odontologia2))
  end

  test "should destroy odontologia2" do
    assert_difference('Odontologia2.count', -1) do
      delete :destroy, id: @odontologia2
    end

    assert_redirected_to odontologia2s_path
  end
end
