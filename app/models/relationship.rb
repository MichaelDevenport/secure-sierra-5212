class Relationship < ActiveRecord::Base
	#fields id | user_id | follower_id | created_at | updated_at
  belongs_to :user
	belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
