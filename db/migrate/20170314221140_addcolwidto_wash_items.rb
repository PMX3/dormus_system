class AddcolwidtoWashItems < ActiveRecord::Migration
  def change
  	add_column :washitems, :laundryorder_id, :integer
  end
end
