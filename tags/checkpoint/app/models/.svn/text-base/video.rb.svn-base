class Video < ActiveRecord::Base
  belongs_to :content
  belongs_to :user

  attr_accessible :title, :description, :rating_up, :rating_down, :user_id, :content_id

  validates :title, :presence => true
  validates :description, :content, :user, :presence => true
end
