	class UsersController < ApplicationController

		skip_before_filter :login_required, :only => [:new,:create]

	  def new
	  
	  @user = User.new

	  end

	  def edit
	  
	  @user = current_user
	  
	  end

	 def create
		@user = User.new(params[:user])
		if @user.save
			
		flash[:notice] = "Create successful!"
		
		redirect_to "/"
		else
		render :action => 'new'
		end
	end


	def update
		@user = current_user


		if @user.update_attributes params[:user]
			flash[:notice] = "Update successful!"
			redirect_to "/"
		else
			render :action => :edit
		end
		end



	end
