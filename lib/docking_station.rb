require_relative "bike"

class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    if empty?
      raise("No bikes available")
    else
      @bikes.each do |bike|
        if bike.working?
          return bike
        end
      end
      raise("All bikes currently out of service")
    end
  end

  def dock(bike, working = true)
    if full?
      raise("Docking Station is at capacity")
    else
      bike.working = working
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
