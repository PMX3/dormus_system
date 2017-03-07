class ApplicantsController < ApplicationController
  before_action :set_applicant, only: [:show, :edit, :update, :destroy, :preference, :update_preference]

  # GET /applicants
  # GET /applicants.json
  def index
    @applicants = Applicant.where.not(stage: "Dormer")
    @rooms=Room.all
  end

  def dormer_list
    @applicants = Applicant.where(stage: "Dormer")

  end
  # GET /applicants/1
  # GET /applicants/1.json
  def show
  end

  def preference
  end

  def update_preference
    @applicant.update(room_type: "Any")
    redirect_to applicant_path(@applicant)
  end

  # GET /applicants/new
  def new
    @applicant = Applicant.new
  end

  def show_applicant
    @applicant = Applicant.find(params[:id])
  end

  def show_dormer
    @applicant = Applicant.find(params[:id])
    @door_logs = DoorLog.where(dormer_id: params[:id] )
  end
  
  # GET /applicants/1/edit
  def edit
  end

  # POST /applicants
  # POST /applicants.json
  def create
    #refer to registrations controller, create action for creation of applicant
  end

def approve
  @applicant = Applicant.find(params[:id])
  UserMailer.approval_email(@applicant).deliver_now
  @applicant.update_attribute(:stage,"Pay Deposit")
  redirect_to applicants_path
end

def create_account
  @applicant = Applicant.find(params[:id])
  room = Room.where(room_number: @applicant.room_number).first
  @applicant.update(:stage=>"Dormer", :password=>"123456"+@applicant.room_number.to_s, :password_confirmation=>"123456"+@applicant.room_number.to_s, room_id: room.id)
  @parent = Parent.create!(:name=>@applicant.guardian_name, :email=>@applicant.guardian_email, :address=>@applicant.guardian_address, :contact_number=>@applicant.guardian_contact_number, :applicant_id=>@applicant.id,:password=>"123456"+@applicant.room_number.to_s, :password_confirmation=>"123456"+@applicant.room_number.to_s)
  UserMailer.account_email(@applicant).deliver_now
  UserMailer.parent_email(@parent).deliver_now
  @statement_of_account = StatementOfAccount.new
  @applicant.statement_of_account = @statement_of_account
  @statement_of_account.update(:applicant_id=>@applicant.id)
  redirect_to applicants_path
end

def room_select
  @applicant = Applicant.find(params[:id])
  @applicant.update_attribute(:room_number,params[:room_number])
  redirect_to applicants_path
end

def add_violation
  @applicant = Applicant.find(params[:id])
  @applicant.violation += Integer(params[:v])
  @applicant.save  
  redirect_to show_dormer_path
end

  # PATCH/PUT /applicants/1
  # PATCH/PUT /applicants/1.json
  def update
    respond_to do |format|
      if @applicant.update(applicant_params)
        format.html { redirect_to @applicant, notice: 'Applicant was successfully updated.' }
        format.json { render :show, status: :ok, location: @applicant }
      else
        format.html { render :edit }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicants/1
  # DELETE /applicants/1.json
  def destroy
    #send email here
    # Tell the UserMailer to send a welcome email after save
    #UserMailer.rejection_email(@applicant).deliver_now
    @applicant.destroy
    respond_to do |format|
      format.html { redirect_to applicants_url, notice: 'Applicant was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant
      @applicant = Applicant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_params
      params.require(:applicant).permit(:email, :last_name, :first_name, :middle_initial, :nickname, :image_path, :gender, :civil_status, :address, :contact_number, :landline_number, :nationality, :religion, :birthday, :school, :school_address, :major, :year, :medical_information, :personal_information, :guardian_name, :guardian_contact_number, :guardian_address, :guardian_email)
    end

end
