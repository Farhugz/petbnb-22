class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy]
  before_action :set_pet_home, only: %i[create]

  def create
    @booking = Booking.new(safe_params)
    @booking.pet_home = @pet_home
    @booking.user = current_user
    if @booking.save
      redirect_to pet_home_path(@pet_home)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(safe_params)
      redirect_to pet_home_path(@booking.pet_home)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to pet_home_path(@booking.pet_home), status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_pet_home
    @pet_home = PetHome.find(params[:pet_home_id])
  end

  def safe_params
    params.require(:booking).permit(:start_date, :end_date, :number_of_guest, :user_id)
  end
end
