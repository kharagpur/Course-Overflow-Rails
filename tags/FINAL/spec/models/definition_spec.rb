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

require 'spec_helper'

describe Definition do
  pending "add some examples to (or delete) #{__FILE__}"
end
