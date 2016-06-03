class WarshipsController < ApplicationController
  def index
    @warships = Warship.all
  end

  def show
    @warship = Warship.find_by(id: params[:id])
    if @warship == nil
      redirect_to "http://localhost:3000/movies"
    end
  end
end
