class AddAttributeToParent < ActiveRecord::Migration
  def change
    add_column :parents, :applicant_id, :integer
  end
end
