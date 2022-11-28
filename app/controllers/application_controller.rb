class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # has_many :bookings
  # has_many :pet_homes
end
