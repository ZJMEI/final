class WarshipsController < ApplicationController

  def index
    @warships = Warship.all
  end

  def create
    warship = Warship.new
    warship.name = params[:name]
    warship.shiptype = params[:shiptype]
    warship.image_url = params[:image_url]
    warship.tier = params[:tier]
    warship.country = params[:country]
    warship.survivability = params[:survivability]
    warship.artillery = params[:artillery]
    warship.aircraft = params[:aircraft]
    warship.torpedoes = params[:torpedoes]
    warship.aadefense = params[:aadefense]
    warship.maneuverability = params[:maneuverability]
    warship.concealment = params[:concealment]
    warship.maxspeed = params[:maxspeed]
    warship.detectrange = params[:detectrange]
    warship.save
  end

  def show
    @warship = Warship.find_by(id: params[:id])
    if @warship == nil
      redirect_to "http://localhost:3000/movies"
    end
  end

  def new

  end

  def edit
    @warship = Warship.find_by(id: params[:id])
  end

  def update
    warship = Warship.find_by(id: params[:id])
    warship.image_url = params[:image_url]
    warship.survivability = params[:survivability]
    warship.artillery = params[:artillery]
    warship.aircraft = params[:aircraft]
    warship.torpedoes = params[:torpedoes]
    warship.aadefense = params[:aadefense]
    warship.maneuverability = params[:maneuverability]
    warship.concealment = params[:concealment]
    warship.maxspeed = params[:maxspeed]
    warship.detectrange = params[:detectrange]
    warship.save
    redirect_to warships_url(@warship)
  end

  def destroy
    warship = Warship.find_by(id: params[:id])
    if warship
      warship.delete
    end
    redirect_to warships_url
  end

end
