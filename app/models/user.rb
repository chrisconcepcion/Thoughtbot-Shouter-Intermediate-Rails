class User < ActiveRecord::Base
	has_many :shouts
	has_many :followed_relationships, class_name: "Relationship", foreign_key: "follower_id"
  has_many :followers_relationships, class_name: "Relationship", foreign_key: "followed_id"



end
