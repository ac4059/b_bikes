require 'DockingStation'

describe DockingStation do
  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'has a default capacity' do
      DockingStation::DEFAULT_CAPACITY.times do
      subject.dock(bike)
    end
    expect{ subject.dock Bike.new }.to raise_error 'there is already a bike'
    end
  end
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
  it 'does not release broken bikes' do
    docking_station = DockingStation.new
    bike = Bike.new
    bike.report_broken
    docking_station.dock(bike)
    expect{docking_station.release_bike}.to raise_error 'there are no working bikes'
  end
  it 'responds to dock' do
    expect(DockingStation.new).to respond_to(:dock).with(1).argument
  end
  it 'docks a bike' do
    docking_station = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times do
      bike = Bike.new
      expect(docking_station.dock(bike)).to eq bike
    end
  end
  it 'returns an error when there is no bike' do
    dock = DockingStation.new
    expect{dock.release_bike}.to raise_error 'there are no bikes'
  end
  it 'raises an error when there is already a bike' do
    docking_station = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times do
      bike = Bike.new
      expect(docking_station.dock(bike)).to eq bike
    end
    expect{docking_station.dock(Bike.new)}.to raise_error 'there is already a bike'
  end
  it 'has a default capacity' do
    expect(DockingStation.new.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
end
