class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.string :violation_type
      t.integer :violation_points
      t.text :violation_description

      t.timestamps null: false
    end
  end
end
