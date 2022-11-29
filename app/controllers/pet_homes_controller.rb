class PetHomesController < ApplicationController
  def index
    @pet_homes = Pet_homes.all
  end

  def show
    @pet_home = Pet_home.find(params[:id])
  end

  def new
    @pet_home = Pet_home.new
  end

  def create
    @pet_home = Pet_home.create(list_params)
  end

  def update




end
