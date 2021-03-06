class Billing < ActiveRecord::Base
	scope :reversed, -> { order 'datetime_paid DESC', 'total_amount DESC' }
	def self.to_csv
		attributes=%w{tenant_id bill_type_dec total_amount created_at datetime_paid paid }
		CSV.generate(headers:true) do |csv|
			csv<<attributes
			all.each do |bill|
				csv <<attributes.map{|attr| bill.send(attr)}
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

	#def tenant
		#@applicants=Applicant.where(id: tenant_id)
		#@applicants.each do |appli|
		#		"#{appli.first_name}"

		#end
	#end
end
