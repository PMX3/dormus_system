require 'test_helper'

class StatementOfAccountsControllerTest < ActionController::TestCase
  setup do
    @statement_of_account = statement_of_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statement_of_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statement_of_account" do
    assert_difference('StatementOfAccount.count') do
      post :create, statement_of_account: { deposit: @statement_of_account.deposit, due_date: @statement_of_account.due_date, electric_due: @statement_of_account.electric_due, personal_laundry_fees: @statement_of_account.personal_laundry_fees, personal_meal_plan_fees: @statement_of_account.personal_meal_plan_fees, personal_other_fees: @statement_of_account.personal_other_fees, personal_total_due: @statement_of_account.personal_total_due, room_total_due: @statement_of_account.room_total_due, water_due: @statement_of_account.water_due }
    end

    assert_redirected_to statement_of_account_path(assigns(:statement_of_account))
  end

  test "should show statement_of_account" do
    get :show, id: @statement_of_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statement_of_account
    assert_response :success
  end

  test "should update statement_of_account" do
    patch :update, id: @statement_of_account, statement_of_account: { deposit: @statement_of_account.deposit, due_date: @statement_of_account.due_date, electric_due: @statement_of_account.electric_due, personal_laundry_fees: @statement_of_account.personal_laundry_fees, personal_meal_plan_fees: @statement_of_account.personal_meal_plan_fees, personal_other_fees: @statement_of_account.personal_other_fees, personal_total_due: @statement_of_account.personal_total_due, room_total_due: @statement_of_account.room_total_due, water_due: @statement_of_account.water_due }
    assert_redirected_to statement_of_account_path(assigns(:statement_of_account))
  end

  test "should destroy statement_of_account" do
    assert_difference('StatementOfAccount.count', -1) do
      delete :destroy, id: @statement_of_account
    end

    assert_redirected_to statement_of_accounts_path
  end
end
