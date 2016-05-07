class ChangeParentEmailAddressToEmail < ActiveRecord::Migration
  def up
  	rename_column :parents, :email_address, :email
  end
end
