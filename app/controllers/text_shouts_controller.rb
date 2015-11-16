class TextShoutsController < ApplicationController
  
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
    TextShout.new(text_shout_params)
  end
  
	def text_shout_params
		params.require(:text_shout).permit(:body)
	end
end