class AddWashlistIDtoWashitem < ActiveRecord::Migration
  def change
  	add_column :washlists, :washlist_id, :integer
  end
end
