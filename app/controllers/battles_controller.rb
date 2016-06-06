class BattlesController < ApplicationController

  def index
    @battles = Battle.all
  end

  def show
    @battle = Battle.find_by(id: params[:id])
  end

  def new
    @battle = Battle.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    User.delete(params[:id])
  end

end
