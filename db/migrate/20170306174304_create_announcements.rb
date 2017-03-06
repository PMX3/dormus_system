class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :announcement_title
      t.text :announcement_text
      t.date :announcement_date

      t.timestamps null: false
    end
  end
end
