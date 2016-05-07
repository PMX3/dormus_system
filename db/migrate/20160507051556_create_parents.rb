class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.string :contact_number
      t.text :address
      t.string :email_address

      t.timestamps null: false
    end
  end
end
