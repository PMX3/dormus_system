class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.string :breakfast_meal
      t.string :breakfast_drink
      t.string :lunch_meal
      t.string :lunch_drink
      t.string :dinner_meal
      t.string :dinner_drink
      t.decimal :price

      t.timestamps null: false
    end
  end
end
