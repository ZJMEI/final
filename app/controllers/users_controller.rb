class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.all
  end

  def create
    user = user.new
    user.name = params[:user][:name]
    user.password = params[:user][:password]
    user.save
    redirect_to countrys_url
  end

  def destroy
    User.delete(params[:id])
    redirect_to countrys_url
  end
end
