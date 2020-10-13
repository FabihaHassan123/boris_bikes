require "docking_station"

  describe DockingStation do

    describe "#release_bike" do
      it "return true to release the bike" do
        expect(subject).to respond_to(:release_bike)
      end

      it "return a working instance of the bike class" do
        expect(subject.release_bike.working?).to eq true
      end

    end
  end
