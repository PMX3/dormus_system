class AddStageToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :stage, :string
  end
end
