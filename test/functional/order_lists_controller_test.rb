require 'test_helper'

class OrderListsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_list" do
    assert_difference('OrderList.count') do
      post :create, :order_list => { }
    end

    assert_redirected_to order_list_path(assigns(:order_list))
  end

  test "should show order_list" do
    get :show, :id => order_lists(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => order_lists(:one).to_param
    assert_response :success
  end

  test "should update order_list" do
    put :update, :id => order_lists(:one).to_param, :order_list => { }
    assert_redirected_to order_list_path(assigns(:order_list))
  end

  test "should destroy order_list" do
    assert_difference('OrderList.count', -1) do
      delete :destroy, :id => order_lists(:one).to_param
    end

    assert_redirected_to order_lists_path
  end
end
