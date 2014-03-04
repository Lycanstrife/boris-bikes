class Bike

# The initialize method is always called when
# you create a new class by typing Bike.new

	def initialize

		# All instance variables begin with @

		# This needs to be an instance variable
		# because we'll need it in other methods
		
		@broken = false
	end

	def broken?
		# instance variables are avaible in all methods
		@broken
	end

	def break
		# AND any instance can update them!
		@broken = true
	end

	def fix
		@broken = false
	end

end