class CreateFollowingRelationships < ActiveRecord::Migration
  def change
    create_table :following_relationships do |t|
      t.integer :followed_id, :follower_id
      t.timestamps
    end
  end
end
