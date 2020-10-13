require_relative "bike"

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end
  
  def release_bike
    if @bikes.length <= 0
      raise("No bikes available")
    else
      Bike.new
    end
  end

  def dock(bike)
    @bikes << bike
  end
end

# docking_station = DockingStation.new
