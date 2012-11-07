require 'test_helper'

class SotrudnikisControllerTest < ActionController::TestCase
  setup do
    @sotrudniki = sotrudnikis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sotrudnikis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sotrudniki" do
    assert_difference('Sotrudniki.count') do
      post :create, sotrudniki: { access: @sotrudniki.access, adress: @sotrudniki.adress, district: @sotrudniki.district, email: @sotrudniki.email, job: @sotrudniki.job, name: @sotrudniki.name, short_name: @sotrudniki.short_name, tab_number: @sotrudniki.tab_number, telephone: @sotrudniki.telephone, username: @sotrudniki.username }
    end

    assert_redirected_to sotrudniki_path(assigns(:sotrudniki))
  end

  test "should show sotrudniki" do
    get :show, id: @sotrudniki
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sotrudniki
    assert_response :success
  end

  test "should update sotrudniki" do
    put :update, id: @sotrudniki, sotrudniki: { access: @sotrudniki.access, adress: @sotrudniki.adress, district: @sotrudniki.district, email: @sotrudniki.email, job: @sotrudniki.job, name: @sotrudniki.name, short_name: @sotrudniki.short_name, tab_number: @sotrudniki.tab_number, telephone: @sotrudniki.telephone, username: @sotrudniki.username }
    assert_redirected_to sotrudniki_path(assigns(:sotrudniki))
  end

  test "should destroy sotrudniki" do
    assert_difference('Sotrudniki.count', -1) do
      delete :destroy, id: @sotrudniki
    end

    assert_redirected_to sotrudnikis_path
  end
end
