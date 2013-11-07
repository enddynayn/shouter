# == Schema Information
#
# Table name: following_relationships
#
#  id               :integer          not null, primary key
#  follower_id      :integer
#  followed_user_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class FollowingRelationship < ActiveRecord::Base
  # by default rails is going to try to find the class
  # follower and followed_user we need to overwrite the
  # that behaviour to look for the User calss with class_name
  belongs_to :follower, class_name: 'User'
  belongs_to :followed_user, class_name: 'User'
end
