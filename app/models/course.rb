# == Schema Information
#
# Table name: courses
#
#  id            :integer         not null, primary key
#  title         :string(255)
#  department_id :integer
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Course < ActiveRecord::Base
  belongs_to :department
  has_many :contents
  has_many :questions

  attr_accessible :title, :department_id

  validates :title, :department, :presence => true
end
