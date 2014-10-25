class OwnersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_filter :require_login, only: [:new, :create]

	def new
		@company = Company.find(params[:id])
		@user = User.new
	end

	def create
		@user = User.new(owner_params)
		debugger
    respond_to do |format|
      if @user.save
        auto_login(@user)
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :owner_landing, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
 	end

	private
	def owner_params
    params.require(:user).permit(:role, :company_id, :name, :email, :phone, :password, :password_confirmation)
  end
end
