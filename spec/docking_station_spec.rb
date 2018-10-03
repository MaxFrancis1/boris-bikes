require 'docking_station'
require 'bike'

describe DockingStation do 
  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'releases working bikes' do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike.working?).to be true
  end
  describe 'release_bike' do
    it 'It can dock a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
end  