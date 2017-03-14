class ChangeDataTypeForReferenceNo < ActiveRecord::Migration
  def change
  	change_column :washlists, :reference_no, :bigint
  end
end
