class ApplicantsController < ApplicationController
  before_action :set_applicant, only: [:show, :edit, :update, :destroy, :preference, :update_preference]

  # GET /applicants
  # GET /applicants.json
  def index
    @applicants = Applicant.all
  end

  # GET /applicants/1
  # GET /applicants/1.json
  def show
  end

  def preference
  end

  def update_preference
    @applicant.update(room_type: params[:room_type])
    redirect_to applicant_path(@applicant)
  end

  # GET /applicants/new
  def new
    @applicant = Applicant.new
  end

  # GET /applicants/1/edit
  def edit
  end

  # POST /applicants
  # POST /applicants.json
  def create
    @applicant = Applicant.new(applicant_params)

    respond_to do |format|
      if @applicant.save
        @applicant.update_attribute(:stage,"Pending")
        format.html { redirect_to @applicant, notice: 'Applicant was successfully created.' }
        format.json { render :show, status: :created, location: @applicant }
      else
        format.html { render :new }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

def approve

  @applicant = Applicant.find(params[:id])
  @applicant.update_attribute(:stage,"Pay Deposit")
  redirect_to applicants_path
end

def create_account

  @applicant = Applicant.find(params[:id])
  @applicant.update_attribute(:stage,"Dormer")
  redirect_to applicants_path
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
      params.require(:applicant).permit(:last_name, :first_name, :middle_initial, :nickname, :image_path, :gender, :civil_status, :address, :contact_number, :landline_number, :email, :nationality, :religion, :birthday, :school, :school_address, :major, :year, :medical_information, :personal_information, :guardian_name, :guardian_contact_number, :guardian_address, :guardian_email)
    end
end
