require 'rspec'
require 'parcels'

describe 'Parcel' do
  it 'initializes with length, width, and height' do
    test_parcel = Parcel.new(2,3,4)
    test_parcel.should be_an_instance_of Parcel
  end

  it 'creates an instance of Parcel with the product of the sides' do
    test_parcel = Parcel.new(2,3,4)
    test_parcel.volume.should eq 24
  end

  it 'calculates shipping cost of Parcel using length, width, and height' do
    test_parcel = Parcel.new(3,2,2)
    test_parcel.cost_to_ship.should eq 24
  end
end

