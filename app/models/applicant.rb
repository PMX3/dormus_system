class Applicant < ActiveRecord::Base
	belongs_to :submission
	has_one :user, :as=> :user_type
	has_one :statement_of_account
	has_attached_file :image_path
	validates_attachment_content_type :image_path, content_type: /\Aimage\/.*\Z/
end
