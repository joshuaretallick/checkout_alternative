require 'shop'

describe Shop do
  subject(:shop) { described_class.new }

  it "creates a new shop" do
    expect(shop).to be_a_kind_of Shop
  end

end
