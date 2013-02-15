class AnalogyVote < ActiveRecord::Base
	belongs_to :analogy
	belongs_to :user
	attr_accessible :analogy_id, :vote_type
	validates :analogy_id, presence: true
	validates :vote_type, presence: true
end
