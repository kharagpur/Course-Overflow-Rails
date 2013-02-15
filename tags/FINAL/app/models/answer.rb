class Answer < ActiveRecord::Base
	attr_accessible :response, :question_id
	belongs_to :user
	belongs_to :question
	has_many :votes
	validates :response, :question_id, presence: true
end
