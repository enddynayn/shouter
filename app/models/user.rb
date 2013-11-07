# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  username        :string(255)
#

class User < ActiveRecord::Base
	has_many :shouts, dependent: :destroy

	has_many :followed_user_relationships, 
		foreign_key: :follower_id,
		class_name: 'FollowingRelationship'
	has_many :followed_users, through: :followed_user_relationships

	has_many :follower_relationships,
		foreign_key: :followed_user_id, 
		class_name: 'FollowingRelationship'
	has_many :followers, through: :follower_relationships

	# Table: following_relationship
	# id
	# follower_id
	# followed_user_id
	# timestamps
end
