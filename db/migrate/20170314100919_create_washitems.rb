class CreateWashitems < ActiveRecord::Migration
  def change
    create_table :washitems do |t|
      t.string :item_name
      t.text :item_description

      t.timestamps null: false
    end
  end
end
