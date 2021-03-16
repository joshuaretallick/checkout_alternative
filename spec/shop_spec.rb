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

  it "returns the total when called and under bulk discount threshold" do
    shop.new_transaction
    shop.scan_item('0001')
    shop.scan_item('0001')
    expect(shop.complete_transaction).to eq 49.90
  end

  it "applies a bulk discount if order is over 75" do
    shop.new_transaction
    shop.scan_item('0002')
    shop.scan_item('0002')
    expect(shop.complete_transaction).to eq 117
  end

end
