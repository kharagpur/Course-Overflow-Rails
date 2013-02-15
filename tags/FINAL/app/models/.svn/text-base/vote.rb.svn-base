class Vote < ActiveRecord::Base
	belongs_to :answer
	belongs_to :user
	attr_accessible :answer_id, :vote_type
	validates :answer_id, presence: true
	validates :vote_type, presence: true
end
