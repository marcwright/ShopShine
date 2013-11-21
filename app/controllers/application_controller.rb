class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  	def current_user
		if session[:user_id]
			@current_user ||= User.find_by(id: session[:user_id])

		end
	end


	def authenticate_user
		redirect_to authentications_new_url unless current_user
		# redirect_to_authentications_url unless @current_user
	end


	helper_method :current_user

end
