module Api
	module V1
		class ApplicantsController < ApplicationController
			protect_from_forgery with: :null_session
			def index
				applicants = Applicant.all

				if params[:q].present?
					applicants = applicants.where("first_name LIKE ?", "%#{params[:q]}%")
				end
				render json: {data: applicants}
			end
			def update
				applicant=Applicant.find(params[:id])
				door_log = params[:door] == "true" ? true : false
				applicant.update(:door_log=>door_log)

				render json: {applicant: applicant}
			end
		end
	end
end	