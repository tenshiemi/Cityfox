class OwnersController < ApplicationController
  before_action :require_admin, only: [:index]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_filter :require_login, only: [:new, :create]

	def new
		@company = Company.find(params[:id])
		@user = User.new
	end

	def create
		@user = User.new(owner_params)
    @company_id = params[:user][:company_id]
    respond_to do |format|
      if @user.save
        auto_login(@user)
        new_relation = UserCompanyRelation.new(user_id: @user.id, company_id: @company_id)
        new_relation.save
        format.html { redirect_to owner_landing_path, notice: 'User was successfully created.' }
        format.json { render :owner_landing, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
 	end

  def show
    @user = User.find(params[:id])
    @companies = @user.companies
  end

  def claim
    @user = current_user
    company_id = params[:id]
    @user.role = :unverified_owner
    respond_to do |format|
      if @user.save
        new_relation = UserCompanyRelation.new(user_id: @user.id, company_id: company_id)
        new_relation.save
        format.html { redirect_to owner_landing_path, notice: 'Claim submitted.' }
        format.json { render :owner_landing, status: :updated, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

	private
	def set_user
      @user = User.find(params[:id])
  end

	def owner_params
    params.require(:user).permit(:role, :company_id, :name, :email, :phone, :password, :password_confirmation)
  end
end
