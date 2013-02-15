class Content < ActiveRecord::Base
  belongs_to :course
  has_many :definitions
  has_one :content
  has_many :analogies

  attr_accessible :title, :course_id
  
  validates :title, :course, :presence => true
end
