class SearchesController < ApplicationController
	skip_before_filter :require_login, only: [:index]

	def index
		@search_term = params[:search_term]
		@results = Company.where("name ilike ?", "%#{@search_term}%")
	end
end
