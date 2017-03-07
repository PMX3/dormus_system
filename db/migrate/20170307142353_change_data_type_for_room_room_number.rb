class ChangeDataTypeForRoomRoomNumber < ActiveRecord::Migration
  def change
  	change_column(:rooms, :room_number, :string)
  end
end
