module UserHelper
	# follow button was written after I put it 
	# in the users/show.html. Then I added the route
	# by puttin it here it cleans up our views.
	def follow_button user 
		if current_user.following? user 
			button_to 'Unfollow', user_follow_path(user), method: :delete 
		else
			button_to 'Follow', user_follow_path(user) 
		end
	end
end