class PetHomesController < ApplicationController
  before_action :set_pet_home, only: %i[show edit update destroy]

  def index
    @pet_home = policy_scope(PetHome)
  end

  def show
    authorize @pet_home
    @booking = Booking.new
  end

  def new
    @pet_home = PetHome.new
    authorize @pet_home
  end

  def create
    @pet_home = PetHome.new(pet_home_params)
    @pet_home.user = current_user
    authorize @pet_home
    if @pet_home.save
      redirect_to pet_home_path(@pet_home)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @pet_home.update(pet_home_params)
    authorize @pet_home
    redirect_to pet_home_path(@pet_home)
  end

  def destroy
    auhorize @pet_home
    @pet_home.destroy
  end

  private

  def set_pet_home
    @pet_home = PetHome.find(params[:id])
  end

  def pet_home_params
    params.require(:pet_name).permit(:location, :pet_type, :responsibilities, :capacity, :name, :description, :start_date, :end_date, :emergency_info)
  end
end
