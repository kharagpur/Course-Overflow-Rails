class DefinitionVote < ActiveRecord::Base
	belongs_to :definition
	belongs_to :user
	attr_accessible :definition_id, :vote_type
	validates :definition_id, presence: true
	validates :vote_type, presence: true
end
