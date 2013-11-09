class FollowingRelationshipsController < ApplicationController
	def create
		# params are going to look like 
		# /users/:user_id/follow(.:format)
		current_user.follow user
		redirect_to user 
	end

	def destroy
		user = User.find(params[:user_id])
		current_user.unfollow user
		redirect_to user
	end
	private
	# ruby will find a distinction between local
	# variables and methods. If it cannot find a local variable
	# it will look for a method. 
	def user 
		# memoize, I dont want to use this local variables anywhere else. 
		# underscore to kinda make it private instance variable (no such thing). 
		@_user ||= User.find(params[:user_id])
	end
end