class DoorLog < ActiveRecord::Base
	before_create :limitrecords
	def self.to_csv
		attributes=%w{time_enter direction dormer_id}
		CSV.generate(headers:true) do |csv|
			csv<<attributes
			all.each do |door_log|
				csv <<door_log.attributes.values_at(*attributes)
			end
		end
	end

	def limitrecords
		DoorLog.first.destroy if DoorLog.count > 2300
	end
end
