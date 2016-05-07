class AddViolationsToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :violation, :integer
  end
end
