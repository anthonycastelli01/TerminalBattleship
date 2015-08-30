require_relative '../models/ship'

describe 'SHIP CLASS' do
  let(:ship) { Ship.new({type: "Battleship"}) }

  describe "#Type" do
    it "should be stored as an instance variable" do
      expect(ship).to respond_to(:type)
    end

    it "stores a string" do
      expect(ship.type).to eq("Battleship")
    end
  end
end