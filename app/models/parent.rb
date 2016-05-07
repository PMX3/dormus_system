class Parent < ActiveRecord::Base
	belongs_to :applicant
	has_one :user, :as=> :user_type
end
