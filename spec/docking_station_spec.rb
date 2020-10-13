require "docking_station"

  describe DockingStation do

    describe "#release_bike" do
      it "return true to release the bike" do
        expect(subject).to respond_to(:release_bike)
      end

      it "return a working instance of the bike class" do
        expect(subject.release_bike.working?).to eq true
      end

      it "raises an error if user tries to release_bike when there are no bikes" do
        expect {subject.release_bike}.to raise_error("No bikes available")
      end
    end

    describe "#dock" do
      it "adds a bike to the docking station" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bikes.include?(bike)).to eq(true)
      end
    end
  end
