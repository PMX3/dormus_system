class WashlistsController < ApplicationController
  before_action :set_washlist, only: [:show, :edit, :update, :destroy]

  # GET /washlists
  # GET /washlists.json
  def index
    @washlists = Washlist.all
  end

  # GET /washlists/1
  # GET /washlists/1.json
  def show
      @washitems=Washitem.where(laundryorder_id: params[:id])
    @washitem = Washitem.new
  end

  # GET /washlists/new
  def new
    @washlist = Washlist.new
  end

  # GET /washlists/1/edit
  def edit
  end

  # POST /washlists
  # POST /washlists.json
  def create
    @washlist = Washlist.new(washlist_params)

    respond_to do |format|
      if @washlist.save
        format.html { redirect_to @washlist, notice: 'Washlist was successfully created.' }
        format.json { render :show, status: :created, location: @washlist }
      else
        format.html { render :new }
        format.json { render json: @washlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /washlists/1
  # PATCH/PUT /washlists/1.json
  def update
    respond_to do |format|
      if @washlist.update(washlist_params)
        format.html { redirect_to @washlist, notice: 'Washlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @washlist }
      else
        format.html { render :edit }
        format.json { render json: @washlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /washlists/1
  # DELETE /washlists/1.json
  def destroy
    @washlist.destroy
    respond_to do |format|
      format.html { redirect_to washlists_url, notice: 'Washlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_washlist
      @washlist = Washlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def washlist_params
      params.require(:washlist).permit(:reference_no,:tenant_id)
    end
end
