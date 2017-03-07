class ChangeDataTypeForApplicantRoomNumber < ActiveRecord::Migration
  def change
  	change_column(:applicants, :room_number, :string)
  end
end
