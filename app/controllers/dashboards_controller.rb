 class DashboardsController < ApplicationController
	def show
		# @text_shout = TextShout.new
		# @photo_shout = PhotoShout.new
		# @shouts = current_user.shouts
		# your controller should only be creating one object
 #and it should compose the functionality that your view
 # is going to need
 		@dashboard = Dashboard.new(current_user)
	end
end

# matz rules (ruby rouges)
# no class should be more than 100 lines
# no method should be more than 5 lines
# can only pass 4 arguments to a method
