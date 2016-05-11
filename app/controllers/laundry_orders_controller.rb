class LaundryOrdersController < ApplicationController
  before_action :set_laundry_order, only: [:show, :edit, :update, :destroy]

  # GET /laundry_orders
  # GET /laundry_orders.json
  def index
    @laundry_orders = LaundryOrder.all
  end

  # GET /laundry_orders/1
  # GET /laundry_orders/1.json
  def show
  end

  # GET /laundry_orders/new
  def new
    @laundry_items = LaundryItem.all
    @laundry_order = LaundryOrder.new
  end

  # GET /laundry_orders/1/edit
  def edit
  end

  # POST /laundry_orders
  # POST /laundry_orders.json
  def create
    @laundry_order = LaundryOrder.new(laundry_order_params)

    respond_to do |format|
      if @laundry_order.save
        format.html { redirect_to @laundry_order, notice: 'Laundry order was successfully created.' }
        format.json { render :show, status: :created, location: @laundry_order }
      else
        format.html { render :new }
        format.json { render json: @laundry_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laundry_orders/1
  # PATCH/PUT /laundry_orders/1.json
  def update
    respond_to do |format|
      if @laundry_order.update(laundry_order_params)
        format.html { redirect_to @laundry_order, notice: 'Laundry order was successfully updated.' }
        format.json { render :show, status: :ok, location: @laundry_order }
      else
        format.html { render :edit }
        format.json { render json: @laundry_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laundry_orders/1
  # DELETE /laundry_orders/1.json
  def destroy
    @laundry_order.destroy
    respond_to do |format|
      format.html { redirect_to laundry_orders_url, notice: 'Laundry order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laundry_order
      @laundry_order = LaundryOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laundry_order_params
      params.require(:laundry_order).permit(:payment_due)
    end
end
