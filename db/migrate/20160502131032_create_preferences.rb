class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :room_type

      t.timestamps null: false
    end
  end
end
