class AddImagePathToAnnouncements < ActiveRecord::Migration
  def change
  	add_column :announcements, :image_path, :text
  end
end
