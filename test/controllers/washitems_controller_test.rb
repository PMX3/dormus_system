require 'test_helper'

class WashitemsControllerTest < ActionController::TestCase
  setup do
    @washitem = washitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:washitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create washitem" do
    assert_difference('Washitem.count') do
      post :create, washitem: { item_description: @washitem.item_description, item_name: @washitem.item_name }
    end

    assert_redirected_to washitem_path(assigns(:washitem))
  end

  test "should show washitem" do
    get :show, id: @washitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @washitem
    assert_response :success
  end

  test "should update washitem" do
    patch :update, id: @washitem, washitem: { item_description: @washitem.item_description, item_name: @washitem.item_name }
    assert_redirected_to washitem_path(assigns(:washitem))
  end

  test "should destroy washitem" do
    assert_difference('Washitem.count', -1) do
      delete :destroy, id: @washitem
    end

    assert_redirected_to washitems_path
  end
end
