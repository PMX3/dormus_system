class AddTenantIDtoWashlist < ActiveRecord::Migration
  def change
  	add_column :washlists, :tenant_id, :integer
  end
end
