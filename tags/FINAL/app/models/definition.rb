# == Schema Information
#
# Table name: definitions
#
#  id          :integer         not null, primary key
#  content_id  :integer
#  description :text
#  rating_up   :integer
#  rating_down :integer
#  user_id     :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Definition < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  
  attr_accessible :description, :rating_up, :rating_down, :user_id, :topic_id

  validates :description, :topic_id, :user_id, :presence => true
end
