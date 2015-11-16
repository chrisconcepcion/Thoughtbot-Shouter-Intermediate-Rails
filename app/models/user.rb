class User < ActiveRecord::Base
	include Following
	has_many :shouts
	
	def build_shout(content)
		shouts.build(content: content )
	end
end

