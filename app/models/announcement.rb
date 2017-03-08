class Announcement < ActiveRecord::Base
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	def start_time
        self.announcement_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship

    end
end
