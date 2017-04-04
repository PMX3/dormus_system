class BillingsController < ApplicationController
  before_action :set_billing, only: [:show, :edit, :update, :destroy]

  # GET /billings
  # GET /billings.json
  def index
    @billings = Billing.all
    @applicants=Applicant.all
  end

  # GET /billings/1
  # GET /billings/1.json
  def show
redirect_to dormer_list_path
  end

  # GET /billings/new
  def new
    @billing = Billing.new
    @rooms=Room.all
  end

  # GET /billings/1/edit
  def edit
  end


  # POST /billings
  # POST /billings.json
  def create
    @room=Room.find(params[:id])
    tenant_ids=Array.new
    @room.applicants.each do |a|
      tenant_ids<<a.id
    end
    #raise params.inspect
    @billing = Billing.new(tenant_id: tenant_ids[0], bill_type: billing_params[:bill_type],total_amount: billing_params[:total_amount],due_date: billing_params[:due_date],description: billing_params[:description])
    if tenant_ids.length>1
      respond_to do |format|
        if @billing.save
          tenant_ids.drop(1).each do |tenant_id|
            Billing.create(tenant_id: tenant_id, bill_type: billing_params[:bill_type],total_amount: billing_params[:total_amount],due_date: billing_params[:due_date],description: billing_params[:description])
          format.html { redirect_to @billing, notice: 'Billing was successfully created.' }
          format.json { render :show, status: :created, location: @billing }
          end
        else
          format.html { render :new }
          format.json { render json: @billing.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        if @billing.save
        format.html { redirect_to :back, notice: 'Billing was successfully created.' }
          format.json { render :show, status: :created, location: @billing }
          end
        end
    end
  end

  # PATCH/PUT /billings/1
  # PATCH/PUT /billings/1.json
  def update
    respond_to do |format|
      if @billing.update(billing_params)
        format.html { redirect_to @billing, notice: 'Billing was successfully updated.' }
        format.json { render :show, status: :ok, location: @billing }
      else
        format.html { render :edit }
        format.json { render json: @billing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billings/1
  # DELETE /billings/1.json
  def destroy
    @billing.destroy
    respond_to do |format|
      format.html { redirect_to billings_url, notice: 'Billing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing
      @billing = Billing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billing_params
      params.require(:billing).permit(:tenant_id, :total_amount, :due_date, :bill_type, :description, :datetime_paid, :amount_paid, :outstanding_balance)
    end
end
