class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user
      if user.password == params[:password]
        session["user_id"] = user.id
        redirect_to countrys_url
        return
      end
    end
    redirect_to login_url, notice: "Incorrect username or password"
  end

  def destroy
    reset_session
    redirect_to countrys_url
  end
end
