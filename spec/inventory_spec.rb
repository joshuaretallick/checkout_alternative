require 'inventory'

describe Inventory do
  subject(:inventory) { described_class.new }

  it "can view the inventory" do
    expect(inventory.inventory).to eq Inventory::INVENTORY
  end

  it "shows the inventory when called" do
    print_inventory = "0001 £24.95, 0002 £65.00, 0003 £3.99"
    expect(inventory.show).to eq print_inventory
  end


end
