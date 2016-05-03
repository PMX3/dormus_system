class AddRoomToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :room_number, :integer
  end
end
