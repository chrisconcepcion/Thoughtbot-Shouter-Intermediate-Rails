

class Timeline
	# extend ActiveModel::Naming is not working as thoughtbot suggests?
	
	def initialize(user)
		@user = user
	end
	
	def to_partial_path
		"timelines/timeline"
	end
	
	def shouts
		Shout.where(user_id: shout_user_ids)
	end
	
	private
		def shout_user_ids
			@user.followed_user_ids + [@user.id]
		end
end