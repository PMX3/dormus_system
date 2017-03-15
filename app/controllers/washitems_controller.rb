class WashitemsController < ApplicationController
  before_action :set_washitem, only: [:show, :edit, :update, :destroy]

  # GET /washitems
  # GET /washitems.json
  def index
    @washitems = Washitem.all
  end

  # GET /washitems/1
  # GET /washitems/1.json
  def show
  end

  # GET /washitems/new
  def new
    @washitem = Washitem.new
  end

  # GET /washitems/1/edit
  def edit
  end

  # POST /washitems
  # POST /washitems.json
  def create
    @washitem = Washitem.new(washitem_params)

    respond_to do |format|
      if @washitem.save
        format.html { redirect_to @washitem, notice: 'Washitem was successfully created.' }
        format.json { render :show, status: :created, location: @washitem }
      else
        format.html { render :new }
        format.json { render json: @washitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /washitems/1
  # PATCH/PUT /washitems/1.json
  def update
    respond_to do |format|
      if @washitem.update(washitem_params)
        format.html { redirect_to @washitem, notice: 'Washitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @washitem }
      else
        format.html { render :edit }
        format.json { render json: @washitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /washitems/1
  # DELETE /washitems/1.json
  def destroy
    @washitem.destroy
    respond_to do |format|
      format.html { redirect_to washitems_url, notice: 'Washitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_washitem
      @washitem = Washitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def washitem_params
      params.require(:washitem).permit(:item_name, :item_description,:laundryorder_id)
    end
end
