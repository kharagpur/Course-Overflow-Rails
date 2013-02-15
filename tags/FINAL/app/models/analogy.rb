# == Schema Information
#
# Table name: analogies
#
#  id          :integer         not null, primary key
#  rating_down :integer
#  rating_up   :integer
#  user_id     :integer
#  description :text
#  content_id  :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Analogy < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic #a topic has many analogies

  attr_accessible :description, :rating_up, :rating_down, :user_id, :topic_id

  validates :description, :user, :topic_id, :presence => true
end
