require 'test_helper'

class Admin::PlugsControllerTest < ActionController::TestCase
  setup do
    @admin_plug = admin_plugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_plugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_plug" do
    assert_difference('Admin::Plug.count') do
      post :create, admin_plug: {  }
    end

    assert_redirected_to admin_plug_path(assigns(:admin_plug))
  end

  test "should show admin_plug" do
    get :show, id: @admin_plug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_plug
    assert_response :success
  end

  test "should update admin_plug" do
    put :update, id: @admin_plug, admin_plug: {  }
    assert_redirected_to admin_plug_path(assigns(:admin_plug))
  end

  test "should destroy admin_plug" do
    assert_difference('Admin::Plug.count', -1) do
      delete :destroy, id: @admin_plug
    end

    assert_redirected_to admin_plugs_path
  end
end
