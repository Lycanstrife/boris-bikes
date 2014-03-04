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
	it "should be able to break" do
		bike = Bike.new
		bike.break
		expect(bike).to be_broken
	end
	it "should be able to get fixed" do
		bike = Bike.new
		bike.break
		bike.fix
		expect(bike).not_to be_broken
	end
end