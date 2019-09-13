class ApplicationController < ActionController::Base
helper_method :current_gamer
  def current_gamer
    if gamer_session[:gamer_id]
      @current_gamer ||= Gamer.find(gamer_session[:gamer_id])
    else
      @current_gamer = nil
    end
  end
end
