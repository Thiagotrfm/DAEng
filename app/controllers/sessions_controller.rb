class SessionsController < ApplicationController

  def new
  end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			login user
			redirect_to '/users'
		else
			flash.now[:danger] = 'Email ou senha incorreto(s)'
			render 'new'
		end
	end

	def destroy
		logout
		redirect_to users_path
	end

end
