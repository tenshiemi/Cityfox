class AdminsController < ApplicationController
	before_action :require_admin

	def owners
		@owner_relations = UserCompanyRelation.all
	end

	def companies
		@companies = Company.all
	end

	def verify
		@relation = UserCompanyRelation.find(params[:id])
		@relation.verified = true
		@relation.save
		redirect_to manage_owners_path
	end
end
