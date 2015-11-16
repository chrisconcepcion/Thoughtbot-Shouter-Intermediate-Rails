class PhotoShoutsController < ApplicationController
  
	def create
		shout = current_user.build_shout(content)
		if shout.save
			redirect_to dashboard_path
		else
			flash[:error] = "You cannot shout!"
			redirect_to dashboard_path
		end
	end

private
	def content
		build_content
	end
	
  def build_content
    PhotoShout.new(photo_shout_params)
  end
  
	def photo_shout_params
		params.require(:photo_shout).permit(:image)
	end
end