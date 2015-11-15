class Relationship < ActiveRecord::Base
  belongs_to :follower, class_name: 'User'
  belongs_to :followed_user, class_name: 'User'
  
  validate :doesnt_follow_self
  private

  def doesnt_follow_self
    errors.add(:base, 'You can\'t follow yourself') if follower_id == followed_user_id
  end
end