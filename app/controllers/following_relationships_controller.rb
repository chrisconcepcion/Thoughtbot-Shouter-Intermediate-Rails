class FollowingRelationshipsController < ApplicationController
  def create
    user = User.find_by id: params[:user_id]
    follow_user = current_user.followed_relationships.new(follower_id: current_user.id, followed_id: user.id)
    if follow_user.save
      redirect_to user_path(user.id)
    else
      flash[:error] = "You cannot follow this user or are alreading following this user"
      redirect_to user_path(user.id)
    end
  end
end