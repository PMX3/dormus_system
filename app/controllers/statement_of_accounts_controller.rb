class StatementOfAccountsController < ApplicationController
  before_action :set_statement_of_account, only: [:show, :edit, :update, :destroy]

  # GET /statement_of_accounts
  # GET /statement_of_accounts.json
  def index
    @statement_of_accounts = StatementOfAccount.all
  end

  # GET /statement_of_accounts/1
  # GET /statement_of_accounts/1.json
  def show
  end

  # GET /statement_of_accounts/new
  def new
    @statement_of_account = StatementOfAccount.new
  end

  # GET /statement_of_accounts/1/edit
  def edit
  end

  # POST /statement_of_accounts
  # POST /statement_of_accounts.json
  def create
    @statement_of_account = StatementOfAccount.new(statement_of_account_params)

    respond_to do |format|
      if @statement_of_account.save
        format.html { redirect_to @statement_of_account, notice: 'Statement of account was successfully created.' }
        format.json { render :show, status: :created, location: @statement_of_account }
      else
        format.html { render :new }
        format.json { render json: @statement_of_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statement_of_accounts/1
  # PATCH/PUT /statement_of_accounts/1.json
  def update
    respond_to do |format|
      if @statement_of_account.update(statement_of_account_params)
        format.html { redirect_to @statement_of_account, notice: 'Statement of account was successfully updated.' }
        format.json { render :show, status: :ok, location: @statement_of_account }
      else
        format.html { render :edit }
        format.json { render json: @statement_of_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statement_of_accounts/1
  # DELETE /statement_of_accounts/1.json
  def destroy
    @statement_of_account.destroy
    respond_to do |format|
      format.html { redirect_to statement_of_accounts_url, notice: 'Statement of account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statement_of_account
      @statement_of_account = StatementOfAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statement_of_account_params
      params.require(:statement_of_account).permit(:electric_due, :water_due, :deposit, :room_total_due, :personal_laundry_fees, :personal_other_fees, :personal_meal_plan_fees, :personal_total_due, :due_date)
    end
end
