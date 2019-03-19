class AddUsersIdToBlockedUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :blocked_users, :blocker_user, :integer
    add_column :blocked_users, :blocked_user, :integer
  end
end
