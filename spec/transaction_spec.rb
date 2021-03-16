require 'transaction'

describe Transaction do

  subject(:transaction) { described_class.new }

  let(:new_transaction) do
    [
      '0001',
      '0002',
      '0003'
    ]
  end

  it "responds to add an item" do
    expect(transaction).to respond_to(:add).with(1).argument
  end

  it "adds several items to the transaction" do
    transaction.add('0001')
    transaction.add('0002')
    transaction.add('0003')
    expect(transaction.transaction).to eq new_transaction
  end

  it "tells if a item is in the inventory" do
    expect(transaction.has_item?('0001')).to be true
  end

  it "tells if a item is NOT in the inventory" do
    expect(transaction.has_item?('0005')).to be false
  end

  it "doesn't allow items to be added that are not in the inventory" do
  allow(transaction).to receive(:has_item?).with('0001').and_return(true)
  allow(transaction).to receive(:has_item?).with('0003').and_return(true)
  allow(transaction).to receive(:has_item?).with('0005').and_return(false)
  expect { transaction.add('0005') }.to raise_error "SKU is invalid!"
end

end
