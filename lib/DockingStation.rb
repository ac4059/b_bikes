class DockingStation

  attr_reader :bike

  def release_bike
    if @bike then
      @bike
    else
      raise 'there are no bikes'
    end
  end

  def dock(bike)
    @bike = bike
  end
  #
  # def bike
  #   @bike
  # end

end
