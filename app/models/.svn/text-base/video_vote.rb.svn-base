class VideoVote < ActiveRecord::Base
	belongs_to :video
	belongs_to :user
	attr_accessible :video_id, :vote_type
	validates :video_id, presence: true
	validates :vote_type, presence: true
end
