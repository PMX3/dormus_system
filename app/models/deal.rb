class Deal < ActiveRecord::Base
	belongs_to :statement_of_account
	belongs_to :applicant
end
