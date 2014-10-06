class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      flash[:notice] = "Car submitted."
      redirect_to cars_path
    else
      flash[:notice] = "Invalid entry."
      render :new
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  private

  def car_params
    params.require(:car).permit(:manufacturer_id, :year, :mileage, :color)
  end
end
