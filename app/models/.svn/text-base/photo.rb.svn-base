#t.string   "description"
#t.string   "content_type"
#t.string   "filename"
#t.binary   "binary_data"
#t.datetime "created_at",   :null => false
#t.datetime "updated_at",   :null => false
#t.integer  "topic_id"
#t.integer  "user_id"

class Photo < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :topic
  attr_accessible :description, :rating_up, :rating_down, :user_id, :topic_id

  validates :description, :user, :topic_id, :presence => true
  
  def image_file=(input_data)
      self.filename = input_data.original_filename
      self.content_type = input_data.content_type.chomp
      self.binary_data = input_data.read
  end
end
