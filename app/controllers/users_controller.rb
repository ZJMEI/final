class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    if !@user || (@user.id != session[:user_id].to_i)
      redirect_to root_url
    end
  end


  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new
    user.name = params[:user][:name]
    user.administrator = false;
    user.password = params[:user][:password]
    user.XP = 0;
    user.save
    redirect_to users_url
  end

  def destroy
    User.delete(params[:id])
    redirect_to users_url
  end
end
