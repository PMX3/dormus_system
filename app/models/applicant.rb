class Applicant < ActiveRecord::Base
	belongs_to :submission
	has_attached_file :image_path
	validates_attachment_content_type :image_path, content_type: /\Aimage\/.*\Z/
end
