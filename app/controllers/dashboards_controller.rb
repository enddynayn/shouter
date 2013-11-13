 class DashboardsController < ApplicationController
	def show
		# @text_shout = TextShout.new
		# @photo_shout = PhotoShout.new
		# @shouts = current_user.shouts
 # your Controller should only be creating one object
 # and it should compose the functionality that your view
 # is going to need
 		@dashboard = Dashboard.new(current_user)
	end
end

# matz rules (ruby rouges)
# no class should be more than 100 lines
# no method should be more than 5 lines
# can only pass 4 arguments to a method

# Metz 2009 heroku object oriented solid...

# single responsibility principal
	# An object should not have to change for 
	# more than one reason. 
# Open-close principal
	# an object is open for extension but
	# closed for modification.  
	# you can extend the functionality of an object
	# without modifying it. 

	# 1. you can use decorators for an object in which 
	# you pass your object into another

	# 2. observers.
	# 3. dependency injection where your class can take 
	# in different classes in order to determine its 
	# functionality. 


# list class substitution
#
