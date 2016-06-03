class WarshipsController < ApplicationController
  def index
    @warships = Warship.all
  end
end
