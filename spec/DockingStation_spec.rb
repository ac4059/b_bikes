require 'DockingStation'


describe DockingStation do
  it 'responds to release_bike' do
    expect(DockingStation.new).to respond_to (:release_bike)
  end
  it 'releases working bikes' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.release_bike).to be_a Bike
    #expect{docking_station.release_bike}.to raise_error
  end
  it 'responds to dock' do
    expect(DockingStation.new).to respond_to(:dock).with(1).argument
  end
  it 'docks a bike' do
    bike = Bike.new
    expect(DockingStation.new.dock(bike)).to eq bike
  end
  it 'responds to bike' do
    expect(DockingStation.new).to respond_to(:bike)
  end
  it 'returns a Docked Bike' do
    bike = Bike.new
    dock = DockingStation.new
    dock.dock(bike)
    expect(dock.bike).to eq bike
  end
  it 'returns an error when there is no bike' do
    dock = DockingStation.new
    expect{dock.release_bike}.to raise_error
  end
end
