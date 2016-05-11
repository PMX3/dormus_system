class LaundryOrderItemsController < ApplicationController
  before_action :set_laundry_order_item, only: [:show, :edit, :update, :destroy]

  # GET /laundry_order_items
  # GET /laundry_order_items.json
  def index
    @laundry_order_items = LaundryOrderItem.all
  end

  # GET /laundry_order_items/1
  # GET /laundry_order_items/1.json
  def show
  end

  # GET /laundry_order_items/new
  def new
    @laundry_order_item = LaundryOrderItem.new
  end

  # GET /laundry_order_items/1/edit
  def edit
  end

  # POST /laundry_order_items
  # POST /laundry_order_items.json
  def create
    @laundry_order_item = LaundryOrderItem.new(laundry_order_item_params)

    respond_to do |format|
      if @laundry_order_item.save
        format.html { redirect_to @laundry_order_item, notice: 'Laundry order item was successfully created.' }
        format.json { render :show, status: :created, location: @laundry_order_item }
      else
        format.html { render :new }
        format.json { render json: @laundry_order_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laundry_order_items/1
  # PATCH/PUT /laundry_order_items/1.json
  def update
    respond_to do |format|
      if @laundry_order_item.update(laundry_order_item_params)
        format.html { redirect_to @laundry_order_item, notice: 'Laundry order item was successfully updated.' }
        format.json { render :show, status: :ok, location: @laundry_order_item }
      else
        format.html { render :edit }
        format.json { render json: @laundry_order_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laundry_order_items/1
  # DELETE /laundry_order_items/1.json
  def destroy
    @laundry_order_item.destroy
    respond_to do |format|
      format.html { redirect_to laundry_order_items_url, notice: 'Laundry order item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laundry_order_item
      @laundry_order_item = LaundryOrderItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laundry_order_item_params
      params.require(:laundry_order_item).permit(:time_ordered, :quantity)
    end
end
