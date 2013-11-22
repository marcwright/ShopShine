class AuthenticationsController < ApplicationController

#only call into

before_action :authenticate_user, only: [:destroy]
# before you log out(destroy) ... you must first authenticate the user


def new
	#Are they already logged in?
	# if current_user  #They are!  Can't create them again.
	# @user = User.new
	# if params[:email] == current_user.email
	# if current_user.email
	if current_user
		# redirect_to users_url
		redirect_to users_results_url
	else
		@user = User.new
		# redirect_to users_results_url
		render :new
	end
end

def create
	
	user = User.find_by(email: params[:user][:email])
	# if user
	if user != nil
		if user.authenticate(params[:user][:password]) 
		session[:user_id] = user.id
		# redirect_to root_url

		redirect_to users_results_url

			# if current_user.triggers[0] == nil
			# unless current_user.triggers.any?
			# # redirect_to users_user.id_triggers

			# redirect_to new_user_trigger_url(user.id)

			# else
			# redirect_to triggers_maindisplay_url
			# end
	    end
	else
		# flash.alert = "Unable to log you in.  Please try again."
		# flash.now.alert = "Unable to log you in. Please try again."
		# render :new
		Rails.logger.debug "Unable to log you in. Please try again."
		# Rails.logger.debug "#{my_hash.inspect}"
		# render :create
		# flash[:notice] = "Unable to log you in. Please try again."
		redirect_to new_authentication_url
		# redirect_to root_url
	end
end


def destroy
	session[:user_id] = nil
	# redirect_to root_url,
	# redirect_to authentications_url,
	# redirect_to authentications_new_url,
	redirect_to root_url,
	  notice: "You signed out."
end



end