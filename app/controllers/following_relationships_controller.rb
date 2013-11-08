class FollowingRelationshipsController < ApplicationController
	def create
		# params are going to look like 
		# /users/:user_id/follow(.:format)
		user = User.find(params[:user_id])
		current_user.followed_users << user 
		redirect_to user 
	end

	def destroy
		user = User.find(params[:user_id])
		current_user.followed_users.delete(user)
		redirect_to user
	end
end