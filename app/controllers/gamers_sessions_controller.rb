class GamersSessionsController < ApplicationController

 def new
  end
  def create
    gamer = Gamer.find_by_nickname(params[:nickname])
    if gamer && gamer.authenticate(params[:password])
      session[:gamer_id] = gamer.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end
  def destroy
    session[:gamer_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
