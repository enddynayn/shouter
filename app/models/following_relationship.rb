class FollowingRelationship < ActiveRecord::Base
  # when you have a belongs_to it trys to determine the class name 
  # with the association name, such as, class name follower and followed_user
  belongs_to :follower, class_name: 'User' # this overwrites the default behavior
  belongs_to :followed_user, class_name: 'User'
end
