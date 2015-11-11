class Relationship < ActiveRecord::Base
  belongs_to :following_relationships, class_name: 'User'
  belongs_to :followed_relationships, class_name: 'User'
  
  validate :doesnt_follow_self
  validates_uniqueness_of [:followed_id, :followed_id]
  private

  def doesnt_follow_self
    errors.add(:base, 'You can\'t follow yourself') if followed_id == follower_id
  end
end