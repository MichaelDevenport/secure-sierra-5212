class Pin < ActiveRecord::Base
	belongs_to :user
	scope :subscribed, ->(followed_users) { where user_id: followed_users }

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	validates :image, presence: true
	validates :description, presence: true
end
