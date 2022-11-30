class PetHomesController < ApplicationController
  def index
    @pet_homes = PetHome.all
  end

  def show
    @pet_home = PetHome.find(params[:id])
  end

  def new
    @pet_home = PetHome.new
  end

  def create
    @pet_home = PetHome.new(pet_home_params)
    @pet_home.user = current_user
    if @pet_home.save
      redirect_to pet_home_path(@pet_home)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @pet_home = PetHome.find(params[:id])
    @pet_home.update(pet_home_params)
    redirect_to pet_home_path(@pet_home)
  end

  def destroy
    @pet_home = PetHome.find(params[:id])
    @pet_home.destroy
  end

  private

  def pet_home_params
    params.require(:pet_home).permit(:location, :pet_type, :responsibilities, :capacity, :name, :description, :start_date, :end_date, :emergency_info)
  end
end
