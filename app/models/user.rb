class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :follower_user, :class_name => "FollowedUser", :foreign_key => "follower_user"
  has_many :followed_user, :class_name => "FollowedUser", :foreign_key => "followed_user"
  has_many :blocker_user, :class_name => "BlockedUser", :foreign_key => "blocker_user"
  has_many :blocked_user, :class_name => "BlockedUser", :foreign_key => "blocked_user"
end
