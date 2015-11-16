class User < ActiveRecord::Base
	include Following
	has_many :shouts
	
end

