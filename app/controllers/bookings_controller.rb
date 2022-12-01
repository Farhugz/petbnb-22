require "date"

class BookingsController < ApplicationController
  before_action :set_booking, only: %i[update destroy approved reject]
  before_action :set_pet_home, only: %i[create]

  def create
    @booking = Booking.new(safe_params)
    @booking.pet_home = @pet_home
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to pet_home_path(@pet_home)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    authorize @booking
    if @booking.update(safe_params)
      redirect_to pet_home_path(@booking.pet_home)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to pet_home_path(@booking.pet_home), status: :see_other
  end

  def my_bookings
    @my_pet_homes = PetHome.where(user: current_user)
    @bookings = Booking.all
    @requests = @bookings.select { |booking| booking.pet_home.user == current_user && booking.approved.nil? }
    @my_bookings = policy_scope(Booking)
  end

  def approved
    authorize @booking
    if @booking.update(approved: true)
      redirect_to my_bookings_bookings_path
    else
      render :my_bookings, status: :unprocessable_entity
    end
  end

  def reject
    authorize @booking
    if @booking.update(approved: false)
      redirect_to my_bookings_bookings_path
    else
      render :my_bookings, status: :unprocessable_entity
    end
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
