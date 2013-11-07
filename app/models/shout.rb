# == Schema Information
#
# Table name: shouts
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#  content_type :string(255)
#  content_id   :integer
#

class Shout < ActiveRecord::Base
  belongs_to :user
  validates_associated :content
  default_scope { order("created_at DESC")}

  belongs_to :content, polymorphic: true
end
