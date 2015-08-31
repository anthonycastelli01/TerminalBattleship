require_relative '../models/ship'

describe 'SHIP CLASS' do
  let(:ship) { Ship.new({type: "Battleship"}) }

  describe "# type" do
    it "should be stored as an instance variable" do
      expect(ship).to respond_to(:type)
    end

    it "stores a string" do
      expect(ship.type).to eq("Battleship")
    end
  end

  describe "# coordinates" do
    # it "should be able to accept an array of coordinates" do
    #   expect(ship(:store_coordinates)).to receive(:store_coordinates) {["B3", "B4", "B5", "B6"]}
    # end
  end
end