require 'test_helper'

class UstroystvasControllerTest < ActionController::TestCase
  setup do
    @ustroystva = ustroystvas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ustroystvas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ustroystva" do
    assert_difference('Ustroystva.count') do
      post :create, ustroystva: { amortization: @ustroystva.amortization, cost: @ustroystva.cost, date_intranse: @ustroystva.date_intranse, date_of_introduce: @ustroystva.date_of_introduce, date_off: @ustroystva.date_off, department: @ustroystva.department, district: @ustroystva.district, invent_number: @ustroystva.invent_number, name: @ustroystva.name, object_operation: @ustroystva.object_operation, operation_date: @ustroystva.operation_date, type: @ustroystva.type, worker: @ustroystva.worker }
    end

    assert_redirected_to ustroystva_path(assigns(:ustroystva))
  end

  test "should show ustroystva" do
    get :show, id: @ustroystva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ustroystva
    assert_response :success
  end

  test "should update ustroystva" do
    put :update, id: @ustroystva, ustroystva: { amortization: @ustroystva.amortization, cost: @ustroystva.cost, date_intranse: @ustroystva.date_intranse, date_of_introduce: @ustroystva.date_of_introduce, date_off: @ustroystva.date_off, department: @ustroystva.department, district: @ustroystva.district, invent_number: @ustroystva.invent_number, name: @ustroystva.name, object_operation: @ustroystva.object_operation, operation_date: @ustroystva.operation_date, type: @ustroystva.type, worker: @ustroystva.worker }
    assert_redirected_to ustroystva_path(assigns(:ustroystva))
  end

  test "should destroy ustroystva" do
    assert_difference('Ustroystva.count', -1) do
      delete :destroy, id: @ustroystva
    end

    assert_redirected_to ustroystvas_path
  end
end
