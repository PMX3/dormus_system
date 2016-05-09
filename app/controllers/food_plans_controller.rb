class FoodPlansController < ApplicationController
  before_action :set_food_plan, only: [:show, :edit, :update, :destroy]

  # GET /food_plans
  # GET /food_plans.json
  def index
    @food_plans = FoodPlan.all
    @meals=Meal.all
  end

  # GET /food_plans/1
  # GET /food_plans/1.json
  def show
  end

  # GET /food_plans/new
  def new
    @food_plan = FoodPlan.new

  end

  # GET /food_plans/1/edit
  def edit
  end

  def meal_select
  @food_plan = FoodPlan.find(params[:id])
  @food_plan.update_attribute(:meal,params[:meal])
  redirect_to food_plans_path
  end

  # POST /food_plans
  # POST /food_plans.json
  def create
    @food_plan = FoodPlan.new

    respond_to do |format|
      if @food_plan.save
        @food_plan.update(food_plan_date: params[:abc])
        format.html { redirect_to food_plans_path, notice: 'Food plan was successfully created.' }
        format.json { render :show, status: :created, location: @food_plan }
      else
        format.html { render :new }
        format.json { render json: @food_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_meal
    @food_plan = FoodPlan.find(params[:id])
    @food_plan.update_attribute(:food_plan_date, params[:food_plan_date])
    redirect_to food_plans_path
  end

  # PATCH/PUT /food_plans/1
  # PATCH/PUT /food_plans/1.json
  def update
    respond_to do |format|
      if @food_plan.update(food_plan_params)
        format.html { redirect_to @food_plan, notice: 'Food plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_plan }
      else
        format.html { render :edit }
        format.json { render json: @food_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_plans/1
  # DELETE /food_plans/1.json
  def destroy
    @food_plan.destroy
    respond_to do |format|
      format.html { redirect_to food_plans_url, notice: 'Food plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_plan
      @food_plan = FoodPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_plan_params
      params.require(:food_plan).permit(:food_plan_date)
    end
end
