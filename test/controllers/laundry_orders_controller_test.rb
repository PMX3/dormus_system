require 'test_helper'

class LaundryOrdersControllerTest < ActionController::TestCase
  setup do
    @laundry_order = laundry_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laundry_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laundry_order" do
    assert_difference('LaundryOrder.count') do
      post :create, laundry_order: { payment_due: @laundry_order.payment_due }
    end

    assert_redirected_to laundry_order_path(assigns(:laundry_order))
  end

  test "should show laundry_order" do
    get :show, id: @laundry_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @laundry_order
    assert_response :success
  end

  test "should update laundry_order" do
    patch :update, id: @laundry_order, laundry_order: { payment_due: @laundry_order.payment_due }
    assert_redirected_to laundry_order_path(assigns(:laundry_order))
  end

  test "should destroy laundry_order" do
    assert_difference('LaundryOrder.count', -1) do
      delete :destroy, id: @laundry_order
    end

    assert_redirected_to laundry_orders_path
  end
end
