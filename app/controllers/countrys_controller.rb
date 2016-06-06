class CountrysController < ApplicationController

  def index
    @countrys = Country.all
  end

  def show
    @country = Country.find_by(id: params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
