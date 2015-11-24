class SearchesController < ApplicationController 
	def show
		@search = Search.new(term)
	end
	
	private
	def term
		params[:search][:term]
	end
end