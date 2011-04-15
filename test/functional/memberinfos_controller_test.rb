require 'test_helper'

class MemberinfosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:memberinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create memberinfo" do
    assert_difference('Memberinfo.count') do
      post :create, :memberinfo => { }
    end

    assert_redirected_to memberinfo_path(assigns(:memberinfo))
  end

  test "should show memberinfo" do
    get :show, :id => memberinfos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => memberinfos(:one).to_param
    assert_response :success
  end

  test "should update memberinfo" do
    put :update, :id => memberinfos(:one).to_param, :memberinfo => { }
    assert_redirected_to memberinfo_path(assigns(:memberinfo))
  end

  test "should destroy memberinfo" do
    assert_difference('Memberinfo.count', -1) do
      delete :destroy, :id => memberinfos(:one).to_param
    end

    assert_redirected_to memberinfos_path
  end
end
