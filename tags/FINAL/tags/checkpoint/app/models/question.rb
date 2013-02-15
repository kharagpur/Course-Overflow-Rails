class Question < ActiveRecord::Base
	belongs_to :course
	belongs_to :user

	attr_accessible :title, :description, :course_id

	validates :title, :presence => true, :length => {:maximum => 50 }
	validates :description, :presence => true, :length => {:maximum => 250}
end
