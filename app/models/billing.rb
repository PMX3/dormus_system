class Billing < ActiveRecord::Base
	def self.to_csv
		attributes=%w{tenant_id bill_type description total_amount created_at datetime_paid paid }
		CSV.generate(headers:true) do |csv|
			csv<<attributes
			all.each do |bill|
				csv <<bill.attributes.values_at(*attributes)
			end
		end
	end
end
