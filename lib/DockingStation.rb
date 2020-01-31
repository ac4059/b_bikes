class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity
  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'there are no bikes' if empty?
    bike = get_first_working_bike
    fail 'there are no working bikes' if bike == nil
    @bikes.delete bike
    bike
  end

  def dock(bike)
    if full?
      then
      raise 'there is already a bike'
    end
    @bikes.push(bike)
    bike
  end

  private

  attr_reader :bike

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

  def get_first_working_bike
    @bikes.each do |x|
      if x.working?
        return x
      end
    end
    return nil
  end
end
