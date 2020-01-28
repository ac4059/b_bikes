class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity
  def initialize(capacity=DEFAULT_CAPACITY)
    @bike = []
    @capacity = capacity
  end

  def release_bike
    fail 'there are no bikes' if empty?
    @bike.pop
  end

  def dock(bike)
    if full?
      then
      raise 'there is already a bike'
    end
    @bike.push(bike)
    bike
  end

  private

  attr_reader :bike

  def full?
    @bike.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bike.empty?
  end
end
