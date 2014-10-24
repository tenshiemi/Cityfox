class SearchesController < ApplicationController
	def create
		results = []
		@search_term = params[:search_term]
	end
end
