class SearchesController < ApplicationController
	def index
		@search_term = params[:search_term]
		@results = Company.where("name like ?", "%#{@search_term}%")
	end
end
