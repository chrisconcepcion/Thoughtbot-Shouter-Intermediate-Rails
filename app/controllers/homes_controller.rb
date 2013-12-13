class HomesController < ApplicationController
	before_action :check_logged_in_user, only: [:show]
	def show
	end

private
	def check_logged_in_user
    redirect_to dashboard_path if signed_in?
	end 		
end