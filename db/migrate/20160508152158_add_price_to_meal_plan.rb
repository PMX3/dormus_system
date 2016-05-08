class AddPriceToMealPlan < ActiveRecord::Migration
  def change
    add_column :meal_plans, :price, :string
  end
end
