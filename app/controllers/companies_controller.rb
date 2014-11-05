class CompaniesController < ApplicationController
	before_action :require_admin, only: [:edit]
	before_action :set_company, only: [:show, :edit, :update]
	skip_before_filter :require_login, only: [:index, :show, :get_all]

	def index
		@companies = Company.all.order(name: :asc)
	end

	def new
		@company = Company.new
	end

	def create
		@company = Company.new(company_params)

		respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Business was successfully created.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
	end

	def show
		if current_user
			@relation = UserCompanyRelation.where(company_id: @company.id, user_id: current_user.id)
		end
	end

	def edit
	end

	def update
		respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Business was successfully updated.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
	end

	def get_all
		render json: Company.all
	end

	private
	def company_params
    params.require(:company).permit(:name, :industry, :country, :city, :state, :postal_code, :logo)
  end

  def set_company
  	@company = Company.find(params[:id])
  end
end
