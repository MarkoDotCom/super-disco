class GpsController < ApplicationController
  before_action :set_gp, only: %i[ show edit update destroy ]

  # GET /gps or /gps.json
  def index
    @gps = Gp.all
  end

  # GET /gps/1 or /gps/1.json
  def show
  end

  # GET /gps/new
  def new
    @gp = Gp.new
  end

  # GET /gps/1/edit
  def edit
  end

  # POST /gps or /gps.json
  def create
    vehicle_identifier = params[:gp][:vehicle_identifier]

    @gp = Gp.new(gp_params)

    # Validar si la patente existe, sino la crea y posteriormente  crea un gp
    vehicle_obj = Vehicle.find_by(vehicle_identifier: vehicle_identifier)

    if vehicle_obj.present?
      @gp.update(vehicle_id: vehicle_obj.id)
    else
      new_vehicle = Vehicle.create(vehicle_identifier: params[:gp][:vehicle_identifier])
      @gp.update(vehicle_id: new_vehicle.id)
    end

    respond_to do |format|
      if @gp.save
        format.html { redirect_to gp_url(@gp), notice: "Gp was successfully created." }
        format.json { render :show, status: :created, location: @gp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gps/1 or /gps/1.json
  def update
    respond_to do |format|
      if @gp.update(gp_params)
        format.html { redirect_to gp_url(@gp), notice: "Gp was successfully updated." }
        format.json { render :show, status: :ok, location: @gp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gps/1 or /gps/1.json
  def destroy
    @gp.destroy

    respond_to do |format|
      format.html { redirect_to gps_url, notice: "Gp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gp
      @gp = Gp.find(params[:id])
    end

    # Validacion de parametros permitidos en el controlador
    def gp_params
      params.require(:gp).permit(:longitude, :latitude)
    end
end
