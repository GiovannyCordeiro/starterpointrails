class VehiclesController < ApplicationController

  before_action :fetch_vehicle, only: %i[ show edit update destroy ]

  def index()
    @vehicles = Vehicle.all.order(created_at: :desc)
  end

  def new()
    @vehicle = Vehicle.new
  end

  def create()
    # quando mandarem uma requisicao para essa rota, eu quero que tenha os
    # paramentros de vehicles.
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      redirect_to vehicle_path(@vehicle)
    else
      @vehicle = Vehicle.new
      render :new
    end
  end

  def show(); end

  def edit(); end

  def update()
    if @vehicle.update(vehicle_params)
      redirect_to vehicle_path(@vehicle)
    else
      render :edit
    end
  end

  def destroy()
    @vehicle.destroy
    redirect_to vehicle_path
  end

  private

  def vehicle_params() #strong parameters, verifica os parametros
    params.require(:vehicle).permit(:brand, :model, :year, :kind)
  end

  def fetch_vehicle()
    @vehicle = Vehicle.find(params[:id])
  end
end
