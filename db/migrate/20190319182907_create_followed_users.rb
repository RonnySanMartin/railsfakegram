class CreateFollowedUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :followed_users do |t|
      t.timestamps
    end
  end
end
