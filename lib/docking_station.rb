require_relative "bike"

class DockingStation
  attr_reader :bikes

  def initialize(capacity = 1)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    if @bikes.length <= 0
      raise("No bikes available")
    else
      Bike.new
    end
  end

  def dock(bike)
    if @bikes.length == @capacity
      raise("Docking Station is at capacity")
    else
      @bikes << bike
    end
  end
end
