class FollowingRelationshipsController < ApplicationController 
	def create
		user = User.find(params[:user_id])
		# for followed_user to work I need to set up an association
		current_user.followed_user << user 
		redirect_to user 
	end

end