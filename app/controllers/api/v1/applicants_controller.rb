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
				applicant=Applicant.find_by_card_id(params[:id])
				
				door_log = params[:door] == "33" ? true : false
				applicant.update(:door_log=>door_log)
				if door_log==true
					dir="in"
				else
					dir="out"
				end
				entertime=params[:time]
				DoorLog.create(:time_enter=>DateTime.parse(entertime),:direction=>dir,:dormer_id=>params[:id])
				render json: {applicant: applicant}
			end
		end
	end
end	