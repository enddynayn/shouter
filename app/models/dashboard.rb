# follow Metz guide line
# this does not extend from active record. 
# its ok to have models that do not need any persistance. 
# Eventhough we introduce more code into application to cover 
 # the 3 instance variables with the same functionality.
 # We abstracted a class it now has the concept of what a 
 # dashboard is inside of it. So as my dashboard changes over time.
 # we have one place to go to modify changes. 
class Dashboard
	def initialize user
		@user = user
	end

	def new_text_shout
		TextShout.new
	end

	def new_photo_shout
		PhotoShout.new
	end

	
    # replace for shouts.
    # extract class pattern
	def timeline 
		Timeline.new(@user)
	end

	
end

# sandy metz
 # 1. no class should be more than 100 lines
 # 2. no method should be more than 5 lines
 # 3. you can only pass 4 arguments to a method.  
 	# hash count towards that. 
 # 4. Your controller should only be creating 1 object
  	# whose job is to compose the functionality of what 
  	# your views is going to need. 