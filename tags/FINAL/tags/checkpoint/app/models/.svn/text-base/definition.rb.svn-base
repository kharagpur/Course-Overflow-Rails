class Definition < ActiveRecord::Base
  belongs_to :content
  belongs_to :user
  
  attr_accessible :description, :rating_up, :rating_down, :user_id, :content_id

  validates :description, :content, :user, :presence => true
end
