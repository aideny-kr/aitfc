class SocialConnection < ActiveRecord::Base
	validates :user_id, presence: true
	validates :uid, presence: true
	validates :provider, presence: true
	belongs_to :user
end
