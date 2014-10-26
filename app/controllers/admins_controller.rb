class AdminsController < ApplicationController
	before_action :require_admin

	def owners
		@owners = User.all.where(role: "owner")
	end

	def companies
		@companies = Company.all
	end
end
