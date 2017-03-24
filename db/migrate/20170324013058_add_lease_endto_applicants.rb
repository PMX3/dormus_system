class AddLeaseEndtoApplicants < ActiveRecord::Migration
  def change
  	add_column :applicants, :lease_end, :date
  end
end
