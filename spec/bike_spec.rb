# Link to the Bike class
require_relative "../lib/bike"
require_relative "../lib/docking_station"
require_relative "../lib/bike_container"

class ContainerHolder; include BikeContainer; end

# We're describing the functionality
# of a specific class, Bike

describe Bike do

	let(:bike) { Bike.new }

	# This is a specific feature (behaviour)
	# that we expect to be present

	it "should not be broken after we create it" do

		# Expect an instance of this class to have
		# a method "broken?" that should return false

		expect(bike.broken?).to be_false
	end
	it "should be able to break" do
		bike.break
		expect(bike).to be_broken
	end
	it "should be able to get fixed" do
		bike.break
		bike.fix
		expect(bike).not_to be_broken
	end
end

describe BikeContainer do

	let(:bike) { Bike.new }
	let(:holder) { ContainerHolder.new}

	it "should accept a bike" do
		# We expect the holder to have 0 bikes
		expect(holder.bike_count).to eq(0)
		# Let's dock the bike into the holder
		holder.dock(bike)
		# Now we expect the holder to have 1 bike
		expect(holder.bike_count).to eq(1)
	end
end

describe DockingStation do

	let(:station) { DockingStation.new(:capacity => 20) }

	it "should allow setting default capacity on initialising" do
		expect(station.capacity).to eq(20)
	end

end