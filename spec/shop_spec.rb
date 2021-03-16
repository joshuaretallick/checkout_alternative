require 'shop'

describe Shop do
  subject(:shop) { described_class.new }

  it "creates a new shop" do
    expect(shop).to be_a_kind_of Shop
  end

  it "initializes a shop with transaction from the Transaction Class" do
    expect(shop.new_transaction).to be_a_kind_of Transaction
  end

  it "initializes a shop with inventory from the Inventory Class" do
    expect(shop.inventory).to be_a_kind_of Inventory
  end

end
