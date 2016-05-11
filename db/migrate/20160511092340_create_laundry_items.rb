class CreateLaundryItems < ActiveRecord::Migration
  def change
    create_table :laundry_items do |t|
      t.string :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
