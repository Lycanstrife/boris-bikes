# Link to the Bike class
require_relative "../lib/bike"

# We're describing the functionality
# of a specific class, Bike

describe Bike do
	# This is a specific feature (behaviour)
	# that we expect to be present
	it "should not be broken after we create it" do
		bike = Bike.new # Initialise a new object
		# Expect an instance of this class to have
		# a method "broken?" that should return false
		expect(bike.broken?).to be_false
	end
end