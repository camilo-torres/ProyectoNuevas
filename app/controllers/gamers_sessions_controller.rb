class GamersSessionsController < ApplicationController

	def new
		@gamer = Gamer.new
	end
	def create 
		if @gamer = login(params[:nickname],params[:password])
			redirect_back_or_to(posts_path, message: "Login exitoso")
			else 
				flash.now[:alert] = "El usuario o la contrasena estan incorrectas"
				render action: :new
		end
	end
	def destroy
		logout
		redirect_to(:nickname, message: "Logged out")

end
end
