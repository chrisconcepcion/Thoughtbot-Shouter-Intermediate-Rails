class ShoutsController < ApplicationController
	def create
		shout = current_user.shouts.create(shoutsparams)
		if shout.save
			redirect_to dashboard_path
		else
			flash[:error] = "You cannot shout!"
			redirect_to dashboard_path
		end
	end

	def show
		@shout = Shout.find_by(params[:id])
	end
private
	def shoutsparams
		params.require(:shout).permit(:body)
	end
end