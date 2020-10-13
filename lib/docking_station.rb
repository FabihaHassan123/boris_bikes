require_relative "bike"

class DockingStation
  attr_reader :bikes

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    if empty?
      raise("No bikes available")
    else
      Bike.new
    end
  end

  def dock(bike)
    if full?
      raise("Docking Station is at capacity")
    else
      @bikes << bike
    end
  end

  private
  def full?
    @bikes.length == @capacity
  end

  def empty?
    @bikes.length <= 0
  end

end
