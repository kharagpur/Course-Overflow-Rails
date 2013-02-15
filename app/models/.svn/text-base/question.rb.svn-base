# == Schema Information
#
# Table name: questions
#
#  id          :integer         not null, primary key
#  course_id   :integer
#  user_id     :integer
#  title       :text
#  description :text
#  views       :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Question < ActiveRecord::Base
	belongs_to :course
	belongs_to :user

	has_many :answers

	attr_accessible :title, :description, :course_id

	validates :title, :presence => true, :length => {:maximum => 50 }
	validates :description, :presence => true, :length => {:maximum => 250}
end
