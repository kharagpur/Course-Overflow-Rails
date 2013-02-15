# == Schema Information
#
# Table name: contents
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  course_id   :integer
#  content_box :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Content < ActiveRecord::Base

  belongs_to :course
  has_many :definitions
  has_one :content
  has_many :analogies

  attr_accessible :title, :course_id
  
  validates :title, :course, :presence => true

end
