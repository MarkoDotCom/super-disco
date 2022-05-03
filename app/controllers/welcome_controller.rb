class WelcomeController < ApplicationController
  # GET 
  def index
    @gp = Gp.new
    @vehicles = Vehicle.all
    @vehicles_last_seem = @vehicles.uniq(&:vehicle_identifier).map do |vehicle|
      {
        vehicle: vehicle.vehicle_identifier,
        last_seen: vehicle&.gps&.order("created_at")&.last,
        # latitude: vehicle.gps.order("created_at").last,
        # longitude: vehicle.gps.order("created_at").last.longitude,
      }
    end
  end

  # # POST
  # def create
  #   @gp = Gp.new(gp_params)

  #   respond_to do |format|
  #     if @gp.save
  #       format.html { redirect_to gp_url(@gp), notice: "A Global Position was successfully created." }
  #       format.json { render :show, status: :created, location: @gp }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @gp.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # private
  #   def gp_params
  #     params.require([:gp, :vehicle]).permit(:latitude, :longitude, :vehicle_identifier)
  #   end
end
