class AddTenantIDtoViolations < ActiveRecord::Migration
  def change
  	add_column :violations, :tenant_id, :integer
  end
end
