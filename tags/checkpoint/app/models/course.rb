class Course < ActiveRecord::Base
  belongs_to :department
  has_many :contents
  has_many :questions

  attr_accessible :title, :department_id

  validates :title, :department, :presence => true
end
