class AddDoorLogToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :door_log, :boolean
  end
end
