require 'van'

describe Van do
  let(:docking_station) {double(:working? => true, :working= => true)}
  # describe '#pick_up_bikes' do

  it 'picks up broken bikes from the docking station' do
    van = Van.new('docking station')
    van.pick_up_bikes
  end
end