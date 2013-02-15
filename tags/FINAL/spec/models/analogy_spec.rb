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

require 'spec_helper'

describe Analogy do
  pending "add some examples to (or delete) #{__FILE__}"
end
