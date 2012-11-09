require 'test_helper'

class DevicesControllerTest < ActionController::TestCase
  setup do
    @device = devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device" do
    assert_difference('Device.count') do
      post :create, device: { Dev_type: @device.Dev_type, amortization: @device.amortization, date_intr: @device.date_intr, date_kil: @device.date_kil, date_of_introduce: @device.date_of_introduce, department: @device.department, dev_cost: @device.dev_cost, dev_name: @device.dev_name, district: @device.district, invent_number: @device.invent_number, object_operation: @device.object_operation, operation_dat: @device.operation_dat, worker: @device.worker }
    end

    assert_redirected_to device_path(assigns(:device))
  end

  test "should show device" do
    get :show, id: @device
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device
    assert_response :success
  end

  test "should update device" do
    put :update, id: @device, device: { Dev_type: @device.Dev_type, amortization: @device.amortization, date_intr: @device.date_intr, date_kil: @device.date_kil, date_of_introduce: @device.date_of_introduce, department: @device.department, dev_cost: @device.dev_cost, dev_name: @device.dev_name, district: @device.district, invent_number: @device.invent_number, object_operation: @device.object_operation, operation_dat: @device.operation_dat, worker: @device.worker }
    assert_redirected_to device_path(assigns(:device))
  end

  test "should destroy device" do
    assert_difference('Device.count', -1) do
      delete :destroy, id: @device
    end

    assert_redirected_to devices_path
  end
end
