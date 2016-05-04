class AddAttachmentImagePathToApplicants < ActiveRecord::Migration
  def self.up
    change_table :applicants do |t|
      t.attachment :image_path
    end
  end

  def self.down
    remove_attachment :applicants, :image_path
  end
end
