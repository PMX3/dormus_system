class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  autocomplete :applicant, :first_name, :extra_data => [:last_name], :display_value => :to_s, :full => true

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
  end

  def update_dormers
    if !params[:applicant_id].present?
      redirect_to rooms_path
    else
      @applicant = Applicant.find(params[:applicant_id])
      if params[:category] == "add"
        @applicant.update(room_id: params[:room].to_i,room_number: Room.find(params[:room].to_i))
      else
        if @applicant.room_id == params[:room].to_i
          @applicant.update(room_id: nil, room_number: nil)       
        end
      end
      redirect_to rooms_path
    end
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  def room_status
    @room = Room.find(params[:id])
    @room.update_attribute(:room_status,params[:room_status])
    redirect_to rooms_path
  end


  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:room_number, :room_type, :room_capacity, :room_price, :occupant_count, :room_status, :floor_area, :bed_count, :bathroom_count)
    end
end
