require 'test_helper'

class MealsControllerTest < ActionController::TestCase
  setup do
    @meal = meals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal" do
    assert_difference('Meal.count') do
      post :create, meal: { breakfast_drink: @meal.breakfast_drink, breakfast_meal: @meal.breakfast_meal, dinner_drink: @meal.dinner_drink, dinner_meal: @meal.dinner_meal, lunch_drink: @meal.lunch_drink, lunch_meal: @meal.lunch_meal, name: @meal.name, price: @meal.price }
    end

    assert_redirected_to meal_path(assigns(:meal))
  end

  test "should show meal" do
    get :show, id: @meal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal
    assert_response :success
  end

  test "should update meal" do
    patch :update, id: @meal, meal: { breakfast_drink: @meal.breakfast_drink, breakfast_meal: @meal.breakfast_meal, dinner_drink: @meal.dinner_drink, dinner_meal: @meal.dinner_meal, lunch_drink: @meal.lunch_drink, lunch_meal: @meal.lunch_meal, name: @meal.name, price: @meal.price }
    assert_redirected_to meal_path(assigns(:meal))
  end

  test "should destroy meal" do
    assert_difference('Meal.count', -1) do
      delete :destroy, id: @meal
    end

    assert_redirected_to meals_path
  end
end
