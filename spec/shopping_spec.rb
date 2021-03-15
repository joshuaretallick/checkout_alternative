require 'shopping'

describe Transaction do

  let(:transaction) { described_class.new }

  context 'scanning product to total' do

    it 'gives an updated total after item is scanned' do
      transaction.scan_item(['0001'])
      expect(transaction.total).to eq 24.95
    end

    it 'adds 24.95 for a water bottle' do
      transaction.scan_item(['0001'])
      expect(transaction.total).to eq 24.95
    end

    it 'adds 65.00 for a hoodie' do
      transaction.scan_item(['0002'])
      expect(transaction.total).to eq 65.00
    end

    it 'adds 3.99 for a sticker set' do
      transaction.scan_item(['0003'])
      expect(transaction.total).to eq 3.99
    end
  end

  # context 'special_offer' do
  #   it 'if you buy two or more water bottles, price drops' do
  #     expect(transaction.total('0001,0001')).to eq 'Total Price: $45.98'
  #   end
  #
  #   it 'if you spend over £75.00 receive a 10% discount' do
  #     expect(transaction.total('0002,0002')).to eq 'Total Price: $117.0'
  #   end
  #
  # end



end
