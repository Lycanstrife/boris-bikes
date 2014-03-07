class Van

	include BikeContainer

	def collect_available_bikes_from(station)
		station.collect_available_bikes.each do |bike|
			# Self refers to the Van
			station.release(bike)
			self.dock(bike)
		end
	end

end