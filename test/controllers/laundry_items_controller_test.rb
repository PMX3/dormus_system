require 'test_helper'

class LaundryItemsControllerTest < ActionController::TestCase
  setup do
    @laundry_item = laundry_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laundry_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laundry_item" do
    assert_difference('LaundryItem.count') do
      post :create, laundry_item: { description: @laundry_item.description, price: @laundry_item.price }
    end

    assert_redirected_to laundry_item_path(assigns(:laundry_item))
  end

  test "should show laundry_item" do
    get :show, id: @laundry_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @laundry_item
    assert_response :success
  end

  test "should update laundry_item" do
    patch :update, id: @laundry_item, laundry_item: { description: @laundry_item.description, price: @laundry_item.price }
    assert_redirected_to laundry_item_path(assigns(:laundry_item))
  end

  test "should destroy laundry_item" do
    assert_difference('LaundryItem.count', -1) do
      delete :destroy, id: @laundry_item
    end

    assert_redirected_to laundry_items_path
  end
end
