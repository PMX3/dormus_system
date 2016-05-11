class LaundryItemsController < ApplicationController
  before_action :set_laundry_item, only: [:show, :edit, :update, :destroy]

  # GET /laundry_items
  # GET /laundry_items.json
  def index
    @laundry_items = LaundryItem.all
  end

  # GET /laundry_items/1
  # GET /laundry_items/1.json
  def show
  end

  # GET /laundry_items/new
  def new
    @laundry_item = LaundryItem.new
  end

  # GET /laundry_items/1/edit
  def edit
  end

  # POST /laundry_items
  # POST /laundry_items.json
  def create
    @laundry_item = LaundryItem.new(laundry_item_params)

    respond_to do |format|
      if @laundry_item.save
        format.html { redirect_to @laundry_item, notice: 'Laundry item was successfully created.' }
        format.json { render :show, status: :created, location: @laundry_item }
      else
        format.html { render :new }
        format.json { render json: @laundry_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laundry_items/1
  # PATCH/PUT /laundry_items/1.json
  def update
    respond_to do |format|
      if @laundry_item.update(laundry_item_params)
        format.html { redirect_to @laundry_item, notice: 'Laundry item was successfully updated.' }
        format.json { render :show, status: :ok, location: @laundry_item }
      else
        format.html { render :edit }
        format.json { render json: @laundry_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laundry_items/1
  # DELETE /laundry_items/1.json
  def destroy
    @laundry_item.destroy
    respond_to do |format|
      format.html { redirect_to laundry_items_url, notice: 'Laundry item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laundry_item
      @laundry_item = LaundryItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laundry_item_params
      params.require(:laundry_item).permit(:description, :price)
    end
end
