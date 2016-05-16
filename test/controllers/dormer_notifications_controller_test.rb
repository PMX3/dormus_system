require 'test_helper'

class DormerNotificationsControllerTest < ActionController::TestCase
  setup do
    @dormer_notification = dormer_notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dormer_notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dormer_notification" do
    assert_difference('DormerNotification.count') do
      post :create, dormer_notification: {  }
    end

    assert_redirected_to dormer_notification_path(assigns(:dormer_notification))
  end

  test "should show dormer_notification" do
    get :show, id: @dormer_notification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dormer_notification
    assert_response :success
  end

  test "should update dormer_notification" do
    patch :update, id: @dormer_notification, dormer_notification: {  }
    assert_redirected_to dormer_notification_path(assigns(:dormer_notification))
  end

  test "should destroy dormer_notification" do
    assert_difference('DormerNotification.count', -1) do
      delete :destroy, id: @dormer_notification
    end

    assert_redirected_to dormer_notifications_path
  end
end
