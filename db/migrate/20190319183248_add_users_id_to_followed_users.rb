class AddUsersIdToFollowedUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :followed_users, :follower_user, :integer
    add_column :followed_users, :followed_user, :integer
  end
end
