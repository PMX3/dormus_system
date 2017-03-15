class AddIdtoDeals < ActiveRecord::Migration
  def change
  	add_column :deals, :tenant_id, :integer
  end
end
