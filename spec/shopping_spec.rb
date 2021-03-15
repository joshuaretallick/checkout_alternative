require 'shopping'

describe Transaction do

  let(:transaction) { described_class.new }

  describe '#checkout' do

    context 'add to cost' do
      it 'adds 24.95 for a water bottle' do
        expect(transaction.total('0001')).to eq 'Total Price: $24.95'
      end

      it 'adds 65.00 for a hoodie' do
        expect(transaction.total('0002')).to eq 'Total Price: $65.0'
      end

      it 'adds 3.99 for a sticker set' do
        expect(transaction.total('0003')).to eq 'Total Price: $3.99'
      end
    end

    context 'special_offer' do
      it 'if you buy two or more water bottles, price drops' do
        expect(transaction.total('0001,0001')).to eq 'Total Price: $45.98'
      end

      it 'if you spend over £75.00 receive a 10% discount' do
        expect(transaction.total('0002,0002')).to eq 'Total Price: $117.0'
      end

    end

  end

end
