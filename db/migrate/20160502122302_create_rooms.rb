class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :room_number
      t.string :room_type
      t.integer :room_capacity
      t.decimal :room_price
      t.integer :occupant_count
      t.string :room_status
      t.string :floor_area
      t.integer :bed_count
      t.integer :bathroom_count

      t.timestamps null: false
    end
  end
end
