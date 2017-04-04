class Billing < ActiveRecord::Base
	def self.to_csv
		attributes=%w{tenant_id bill_type_dec total_amount created_at datetime_paid paid }
		CSV.generate(headers:true) do |csv|
			csv<<attributes
			all.each do |bill|
				csv <<bill.attributes.map{|attr| user.send(attr)}
			end
		end
	end

	def bill_type_dec
		if bill_type!=nil
			if bill_type==1
				"Water"
			else
				"Electricity"
			end
		else
			"#{description}"
		end
	end
end
