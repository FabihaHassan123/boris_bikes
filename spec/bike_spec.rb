require "bike"
describe Bike do
  describe "#working?" do
    it "responds to the working? method" do
      expect(subject).to respond_to(:working?)
    end
    it "responds true if bike is working" do
      expect(Bike.new(true).working?).to eq(true)
    end
    it "responds false if bike is not working" do
      expect(Bike.new(false).working?).to eq(false)
    end
  end
end
