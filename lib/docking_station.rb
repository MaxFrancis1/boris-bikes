require_relative('bike')
class DockingStation
  @bike
  docking_station = DockingStation
  
  def dock(bike)
    @bike = bike
  end
  
  attr_reader :bike
  
  def release_bike
    @bike
  end
end