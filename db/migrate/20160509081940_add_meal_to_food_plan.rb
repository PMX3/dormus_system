class AddMealToFoodPlan < ActiveRecord::Migration
  def change
    add_column :food_plans, :meal, :string
  end
end
