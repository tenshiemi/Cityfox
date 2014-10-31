class CompaniesController < ApplicationController
	# before_action :require_admin, only: [:index]
	skip_before_filter :require_login, only: [:index, :show, :get_all]

	def index
		@companies = Company.all
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
		@company = Company.find(params[:id])
	end

	def get_all
		render json: Company.all
	end

	private
	def company_params
    params.require(:company).permit(:name, :industry, :country, :city, :state, :postalcode)
  end
end
