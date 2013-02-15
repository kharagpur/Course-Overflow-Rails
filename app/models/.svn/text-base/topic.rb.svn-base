class Topic < ActiveRecord::Base
  belongs_to :course
  attr_accessible :title, :course_id
  has_many :analogys
  has_many :definitions
  has_many :videos
  has_many :photos
  validates :title, :presence => true,
            :length => {:maximum => 255 } 
end
