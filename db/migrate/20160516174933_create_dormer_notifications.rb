class CreateDormerNotifications < ActiveRecord::Migration
  def change
    create_table :dormer_notifications do |t|

      t.timestamps null: false
    end
  end
end
