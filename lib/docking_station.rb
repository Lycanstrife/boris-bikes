require_relative '../lib/bike_container'

class DockingStation

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

end