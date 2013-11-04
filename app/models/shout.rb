# == Schema Information
#
# Table name: shouts
#
#  id         :integer          not null, primary key
#  body       :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Shout < ActiveRecord::Base
  belongs_to :user

  default_scope { order("created_at DESC")}

  validates :body, presence: true
end
