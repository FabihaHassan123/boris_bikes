require "docking_station"

  describe DockingStation do
    it "has a capacity equal to 20 by default" do
      expect(subject.capacity).to eq(20)
    end

    it "capacity set when docking_station is instantiated if argument is passed" do
      expect(DockingStation.new(50).capacity).to eq(50)
    end

    describe "#release_bike" do
      it "return true to release the bike" do
        expect(subject).to respond_to(:release_bike)
      end

      it "return a working instance of the bike class" do
        subject.dock(Bike.new)
        expect(subject.release_bike.working?).to eq(true)
      end

      it "raises an error if user tries to release_bike when there are no bikes" do
        expect{subject.release_bike}.to raise_error("No bikes available")
      end

      it "will only release bikes that are working" do
        subject.dock(Bike.new(), false)
        expect{subject.release_bike}.to raise_error("All bikes currently out of service")
      end
    end

    describe "#dock" do
      it "adds a bike to the docking station" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bikes.include?(bike)).to eq(true)
      end
      it "raises an error if docking_station is at capacity" do
        subject.capacity.times {subject.dock(Bike.new)}
        expect{subject.dock(Bike.new)}.to raise_error("Docking Station is at capacity")
      end
      it "takes a working? argument and applies this to the instance of Bike being checked in" do
        bike = Bike.new
        subject.dock(bike, true)
        expect(subject.bikes[0].working?).to eq(true)
      end
      it "takes a working? argument and applies this to the instance of Bike being checked in" do
        bike = Bike.new
        subject.dock(bike, false)
        expect(subject.bikes[0].working?).to eq(false)
      end
    end
  end
