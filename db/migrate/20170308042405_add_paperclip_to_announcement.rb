class AddPaperclipToAnnouncement < ActiveRecord::Migration
  def change
  	add_attachment :announcements, :image
  end
end
