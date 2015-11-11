class ChangeFollowingRelationshipsToRelationships < ActiveRecord::Migration
  def change
    rename_table :following_relationships, :relationships
  end
end
