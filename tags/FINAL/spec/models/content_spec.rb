# == Schema Information
#
# Table name: contents
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  course_id   :integer
#  content_box :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'spec_helper'

describe Content do
  pending "add some examples to (or delete) #{__FILE__}"
end
