class AddBedNumberToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :bed_number, :integer
  end
end
