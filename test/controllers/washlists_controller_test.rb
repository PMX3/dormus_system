require 'test_helper'

class WashlistsControllerTest < ActionController::TestCase
  setup do
    @washlist = washlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:washlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create washlist" do
    assert_difference('Washlist.count') do
      post :create, washlist: { reference_no: @washlist.reference_no }
    end

    assert_redirected_to washlist_path(assigns(:washlist))
  end

  test "should show washlist" do
    get :show, id: @washlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @washlist
    assert_response :success
  end

  test "should update washlist" do
    patch :update, id: @washlist, washlist: { reference_no: @washlist.reference_no }
    assert_redirected_to washlist_path(assigns(:washlist))
  end

  test "should destroy washlist" do
    assert_difference('Washlist.count', -1) do
      delete :destroy, id: @washlist
    end

    assert_redirected_to washlists_path
  end
end
