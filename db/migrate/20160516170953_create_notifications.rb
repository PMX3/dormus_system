class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.text :content
      t.date :publish_date
      t.boolean :read_status
      t.date :dismiss_date

      t.timestamps null: false
    end
  end
end
