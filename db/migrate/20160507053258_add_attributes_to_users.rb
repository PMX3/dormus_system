class AddAttributesToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :isAdmin, :boolean, default: false
  	add_column :users, :isParent, :boolean, default: false
  end
end
