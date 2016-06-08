class WarshipsController < ApplicationController

  def index
    @warships = Warship.all
    if params[:keyword].present?
      @warships = @warships.where("name LIKE ? OR SHIPTYPE LIKE ?", "%#{params[:keyword]}%", "%#{params[:keyword]}%")
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
    redirect_to warships_url, notice: "ship created successfully"
  end

  def show
    @warship = Warship.find_by(id: params[:id])
    if @warship == nil
      redirect_to warships_url
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
    warship.tier = params[:warship][:tier]
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
    redirect_to warship_path(params[:id]), notice: "ship edited successfully"
  end

  def destroy
    warship = Warship.find_by(id: params[:id])
    @cid = warship.country_id
    if warship
      warship.delete
    end
    redirect_to country_path(@cid), notice: "ship deleted successfully"
  end

end
