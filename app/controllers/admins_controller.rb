class AdminsController < ApplicationController
	before_action :require_admin

	def owners
		@owners = User.all.where("role = ? OR role = ?", :unverified_owner, :owner)
	end

	def companies
		@companies = Company.all
	end

	def verify
		@owner = User.find(params[:id])
		@owner.role = :owner
		@owner.save
		redirect_to manage_owners_path
	end
end
