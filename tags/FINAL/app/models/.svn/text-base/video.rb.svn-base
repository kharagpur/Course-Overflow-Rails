# == Schema Information
#
# Table name: videos
#
#  id          :integer         not null, primary key
#  rating_down :integer
#  rating_up   :integer
#  title       :string(255)
#  content_id  :integer
#  description :text
#  user_id     :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Video < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user

  attr_accessible :title, :description, :rating_up, :rating_down, :user_id, :topic_id
   
  validates :title, :description, :presence => true
  validates :topic_id, :user_id, :presence => true
end
