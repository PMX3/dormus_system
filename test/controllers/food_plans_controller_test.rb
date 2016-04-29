require 'test_helper'

class FoodPlansControllerTest < ActionController::TestCase
  setup do
    @food_plan = food_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_plan" do
    assert_difference('FoodPlan.count') do
      post :create, food_plan: { food_plan_date: @food_plan.food_plan_date }
    end

    assert_redirected_to food_plan_path(assigns(:food_plan))
  end

  test "should show food_plan" do
    get :show, id: @food_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_plan
    assert_response :success
  end

  test "should update food_plan" do
    patch :update, id: @food_plan, food_plan: { food_plan_date: @food_plan.food_plan_date }
    assert_redirected_to food_plan_path(assigns(:food_plan))
  end

  test "should destroy food_plan" do
    assert_difference('FoodPlan.count', -1) do
      delete :destroy, id: @food_plan
    end

    assert_redirected_to food_plans_path
  end
end
