class HashtagController < ApplicationController
	def show
		@search = Search.new(hashtag)
	end
	
	#@hashtag = hashtag
	#	text_shouts = TextShout.where("body like ?", "%#{@hashtag}%")
	#	@shouts = Shout.where(content_type: "TextShout", content_id: text_shouts )

	private
	def hashtag
		"##{params[:id]}"
	end
end