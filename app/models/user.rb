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
	has_many :shouts
	# this will give you an uninitialized constant User::FolledUser
	# In order fix the problem we need to create a table in between 
	# because the association is between Users which are in the same table.
	# 
	#has_many :followed_users, through: :following_relationships 
	# this will imply that the user..
	# by default the sql statment will look like this:
	# SELECT * from following_relationships WHERE user_id = ?
	# we dont have a user_id column in the following_relationship table
	# this is why we need to direct rails to the specif column
	# if im trying to get my followed users this => that I am the follower
	# so i need to arrange a sql statement:
	# SELECT * from following_reationship WHERE follower_id = 2
	# hence, we need to overwrite the foreing key to follower_id
	#has_many :following_relationships, foreign_key: :follower_id #second arg is how to overwrite

	# to search for followers it seems logical to use the pattern
	# from above. However, this assumptions is not completely correct because,
	# it makes you, your own follower.
	#has_many :followers, through: :following_relationships
	# creates this sql statement:
	# SELECT * FROM following_relationships WHERE follower_id = ? # follower_ids
	# SELECT * FROM users WHERE ID IN (?) # follower_ids

	has_many :follower_relationships,
		foreign_key: :followed_user_id,
		class_name: 'FollowingRelationship'
	has_many :followers, through: :follower_relationships
	

	has_many :followed_user_relationships,
		foreign_key: :follower_id,
		class_name: 'FollowingRelationship' 
	has_many :followed_users, through: :followed_user_relationships

end
