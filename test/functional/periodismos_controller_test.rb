require 'test_helper'

class PeriodismosControllerTest < ActionController::TestCase
  setup do
    @periodismo = periodismos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:periodismos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create periodismo" do
    assert_difference('Periodismo.count') do
      post :create, periodismo: @periodismo.attributes
    end

    assert_redirected_to periodismo_path(assigns(:periodismo))
  end

  test "should show periodismo" do
    get :show, id: @periodismo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @periodismo
    assert_response :success
  end

  test "should update periodismo" do
    put :update, id: @periodismo, periodismo: @periodismo.attributes
    assert_redirected_to periodismo_path(assigns(:periodismo))
  end

  test "should destroy periodismo" do
    assert_difference('Periodismo.count', -1) do
      delete :destroy, id: @periodismo
    end

    assert_redirected_to periodismos_path
  end
end
