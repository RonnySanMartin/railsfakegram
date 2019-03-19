class CreateBlockedUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :blocked_users do |t|
      t.timestamps
    end
  end
end
