class CreateLaundryItems < ActiveRecord::Migration
  def change
    create_table :laundry_items do |t|
      t.string :description
      t.decimal :price
      t.string :laundry_item_type

      t.timestamps null: false
    end
  end
end
