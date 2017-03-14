class CreateWashlists < ActiveRecord::Migration
  def change
    create_table :washlists do |t|
      t.integer :reference_no

      t.timestamps null: false
    end
  end
end
