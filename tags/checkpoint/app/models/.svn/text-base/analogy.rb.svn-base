class Analogy < ActiveRecord::Base
  belongs_to :user
  belongs_to :content #a content has many analogies

  attr_accessible :description, :rating_up, :rating_down, :user_id, :content_id

  validates :description, :user, :content, :presence => true
end
