class WarshipsController < ApplicationController

  def index
    @warships = Warship.all
    if params[:keyword].present?
      @warships = @warships.where("name LIKE '%#{params[:keyword]}%'")
    end

    respond_to do |format|
      format.html do
        render 'index'
      end
      format.json do
        render json: @movies
      end
      format.xml do
        render xml: @movies
      end
    end


  end

  def create
    warship = Warship.new
    warship.name = params[:warship][:name]
    warship.shiptype = params[:warship][:shiptype]
    warship.image_url = params[:warship][:image_url]
    warship.tier = params[:warship][:tier]
    warship.country_id = params[:warship][:country_id]
    warship.survivability = params[:warship][:survivability]
    warship.artillery = params[:warship][:artillery]
    warship.aircraft = params[:warship][:aircraft]
    warship.torpedoes = params[:warship][:torpedoes]
    warship.aadefense = params[:warship][:aadefense]
    warship.maneuverability = params[:warship][:maneuverability]
    warship.concealment = params[:warship][:concealment]
    warship.maxspeed = params[:warship][:maxspeed]
    warship.detectrange = params[:warship][:detectrange]
    warship.save
    redirect_to warships_url
  end

  def show
    @warship = Warship.find_by(id: params[:id])
    if @warship == nil
      redirect_to "http://localhost:3000/movies"
    end
  end

  def new
    @warship = Warship.new
  end

  def edit
    @warship = Warship.find_by(id: params[:id])
  end

  def update
    warship = Warship.find_by(id: params[:id])
    warship.image_url = params[:warship][:image_url]
    warship.survivability = params[:warship][:survivability]
    warship.artillery = params[:warship][:artillery]
    warship.aircraft = params[:warship][:aircraft]
    warship.torpedoes = params[:warship][:torpedoes]
    warship.aadefense = params[:warship][:aadefense]
    warship.maneuverability = params[:warship][:maneuverability]
    warship.concealment = params[:warship][:concealment]
    warship.maxspeed = params[:warship][:maxspeed]
    warship.detectrange = params[:warship][:detectrange]
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
