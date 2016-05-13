class AddLaundryItemTypeToLaundryItems < ActiveRecord::Migration
  def change
    add_column :laundry_items, :laundry_item_type, :string
  end
end
