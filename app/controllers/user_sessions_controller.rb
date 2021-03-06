	class UserSessionsController < ApplicationController

	skip_before_filter :login_required, :only => [:new,:create]

	def new
		@user_session = UserSession.new
	end

	def create
		@user_session = UserSession.new(params[:user_session])
	if @user_session.save
		flash[:notice] = "Login successful!"
		redirect_to '/home'
	else
		flash[:notice] = "Login error!"
		render :action => :new
	end
	end


	def destroy
		@user_session = UserSession.find
		@user_session.destroy
		flash[:notice] = "Successfully logged out."
		redirect_to "/"
	end

	end
