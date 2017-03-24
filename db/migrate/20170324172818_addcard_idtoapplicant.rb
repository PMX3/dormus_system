class AddcardIdtoapplicant < ActiveRecord::Migration
  def change
  	add_column :applicants, :card_id, :bigint
  end
end
