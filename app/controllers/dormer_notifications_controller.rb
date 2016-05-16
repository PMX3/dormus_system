class DormerNotificationsController < ApplicationController
  before_action :set_dormer_notification, only: [:show, :edit, :update, :destroy]

  # GET /dormer_notifications
  # GET /dormer_notifications.json
  def index
    @dormer_notifications = DormerNotification.all
  end

  # GET /dormer_notifications/1
  # GET /dormer_notifications/1.json
  def show
  end

  # GET /dormer_notifications/new
  def new
    @dormer_notification = DormerNotification.new
  end

  # GET /dormer_notifications/1/edit
  def edit
  end

  # POST /dormer_notifications
  # POST /dormer_notifications.json
  def create
    @dormer_notification = DormerNotification.new(dormer_notification_params)

    respond_to do |format|
      if @dormer_notification.save
        format.html { redirect_to @dormer_notification, notice: 'Dormer notification was successfully created.' }
        format.json { render :show, status: :created, location: @dormer_notification }
      else
        format.html { render :new }
        format.json { render json: @dormer_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dormer_notifications/1
  # PATCH/PUT /dormer_notifications/1.json
  def update
    respond_to do |format|
      if @dormer_notification.update(dormer_notification_params)
        format.html { redirect_to @dormer_notification, notice: 'Dormer notification was successfully updated.' }
        format.json { render :show, status: :ok, location: @dormer_notification }
      else
        format.html { render :edit }
        format.json { render json: @dormer_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dormer_notifications/1
  # DELETE /dormer_notifications/1.json
  def destroy
    @dormer_notification.destroy
    respond_to do |format|
      format.html { redirect_to dormer_notifications_url, notice: 'Dormer notification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dormer_notification
      @dormer_notification = DormerNotification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dormer_notification_params
      params.fetch(:dormer_notification, {})
    end
end
