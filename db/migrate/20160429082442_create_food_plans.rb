class CreateFoodPlans < ActiveRecord::Migration
  def change
    create_table :food_plans do |t|
      t.date :food_plan_date
      t.string :meal
      t.integer :applicant_id

      t.timestamps null: false
    end
  end
end
