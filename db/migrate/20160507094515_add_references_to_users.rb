class AddReferencesToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :user_type, index: true, polymorphic: true
  end
end
