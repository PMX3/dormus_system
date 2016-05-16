class Room < ActiveRecord::Base
	has_many :applicants
end
