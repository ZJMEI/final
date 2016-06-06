class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user
      if user.password == params[:password]
        cookies["user_id"] = user.id
        redirect_to countrys_url
        return
      end
    end
    redirect_to countrys_url
  end

  def destroy
    cookies.delete("user_id")
    reset_session
    redirect_to countrys_url
  end
end
