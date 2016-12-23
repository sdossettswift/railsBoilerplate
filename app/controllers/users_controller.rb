class UsersController < ApplicationController
 before_action :set_user, only: [:show,  :edit, :update, :destroy]
 before_action :secure, only: [:show,  :edit, :update, :destroy]

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user.save
			#sign them in
			session[:user_id] = @user.id
			redirect_to root_path, alert: "Welcome! Your account has been created."
			else
			render :new, alert; "Try Again"
		end
	end

	def edit
		
	end

	def update
		if @user.update(user_params)
			redirect_to dashboard_path, notice: "User details updated!"
		else
			render :edit
		end
	end

	def show
		
	end

	def index
		@users = User.all
	end



	private
	def user_params
		params.require(:user).permit(:username, :password_digest, :password_confirmation, :password)
	end

	def set_user
		@user = User.find_by id: params[:id]
	end

	def secure
		if @current_user.nil?
			redirect_to sign_in_path, alert: "Please sign in."
		end
	end

end
