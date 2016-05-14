class CreateDoorLogs < ActiveRecord::Migration
  def change
    create_table :door_logs do |t|
      t.datetime :time_enter
      t.string :direction
      t.integer :dormer_id

      t.timestamps null: false
    end
  end
end
