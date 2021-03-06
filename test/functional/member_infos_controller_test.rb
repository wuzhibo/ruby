require 'test_helper'

class MemberInfosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_info" do
    assert_difference('MemberInfo.count') do
      post :create, :member_info => { }
    end

    assert_redirected_to member_info_path(assigns(:member_info))
  end

  test "should show member_info" do
    get :show, :id => member_infos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => member_infos(:one).to_param
    assert_response :success
  end

  test "should update member_info" do
    put :update, :id => member_infos(:one).to_param, :member_info => { }
    assert_redirected_to member_info_path(assigns(:member_info))
  end

  test "should destroy member_info" do
    assert_difference('MemberInfo.count', -1) do
      delete :destroy, :id => member_infos(:one).to_param
    end

    assert_redirected_to member_infos_path
  end
end
