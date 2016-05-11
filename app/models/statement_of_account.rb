class StatementOfAccount < ActiveRecord::Base
	belongs_to :applicant
	has_many :deals
end
