require 'test_helper'

class LaundryOrderItemsControllerTest < ActionController::TestCase
  setup do
    @laundry_order_item = laundry_order_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laundry_order_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laundry_order_item" do
    assert_difference('LaundryOrderItem.count') do
      post :create, laundry_order_item: { quantity: @laundry_order_item.quantity, time_ordered: @laundry_order_item.time_ordered }
    end

    assert_redirected_to laundry_order_item_path(assigns(:laundry_order_item))
  end

  test "should show laundry_order_item" do
    get :show, id: @laundry_order_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @laundry_order_item
    assert_response :success
  end

  test "should update laundry_order_item" do
    patch :update, id: @laundry_order_item, laundry_order_item: { quantity: @laundry_order_item.quantity, time_ordered: @laundry_order_item.time_ordered }
    assert_redirected_to laundry_order_item_path(assigns(:laundry_order_item))
  end

  test "should destroy laundry_order_item" do
    assert_difference('LaundryOrderItem.count', -1) do
      delete :destroy, id: @laundry_order_item
    end

    assert_redirected_to laundry_order_items_path
  end
end
