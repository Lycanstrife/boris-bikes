# Link to the Bike class
require_relative "../lib/bike"
require_relative "../lib/docking_station"

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

describe DockingStation do

	let(:bike) { Bike.new }
	let(:station) { DockingStation.new }
	let(:station) { DockingStation.new(:capacity => 20) }

	it "should accept a bike" do
		bike = Bike.new
		station = DockingStation.new

		# We expect the station to have 0 bikes
		expect(station.bike_count).to eq(0)

		# Let's dock a bike into the station
		station.dock(bike)

		# Now we expect the station to have 1 bike
		expect(station.bike_count).to eq(1)
	end

	it "should release a bike" do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0)
	end

	it "should know when it's full" do
		expect(station).not_to be_full
		20.times { station.dock(Bike.new) }
		expect(station).to be_full
	end

end