require 'test_helper'

class BillingsControllerTest < ActionController::TestCase
  setup do
    @billing = billings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billing" do
    assert_difference('Billing.count') do
      post :create, billing: { amount_paid: @billing.amount_paid, bill_type: @billing.bill_type, datetime_paid: @billing.datetime_paid, description: @billing.description, due_date: @billing.due_date, outstanding_balance: @billing.outstanding_balance, tenant_id: @billing.tenant_id, total_amount: @billing.total_amount }
    end

    assert_redirected_to billing_path(assigns(:billing))
  end

  test "should show billing" do
    get :show, id: @billing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billing
    assert_response :success
  end

  test "should update billing" do
    patch :update, id: @billing, billing: { amount_paid: @billing.amount_paid, bill_type: @billing.bill_type, datetime_paid: @billing.datetime_paid, description: @billing.description, due_date: @billing.due_date, outstanding_balance: @billing.outstanding_balance, tenant_id: @billing.tenant_id, total_amount: @billing.total_amount }
    assert_redirected_to billing_path(assigns(:billing))
  end

  test "should destroy billing" do
    assert_difference('Billing.count', -1) do
      delete :destroy, id: @billing
    end

    assert_redirected_to billings_path
  end
end
