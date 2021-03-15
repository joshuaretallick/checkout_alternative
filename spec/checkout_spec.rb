require 'checkout'

describe Checkout do

  describe '#checkout' do

    context 'add to cost' do
      it 'adds 24.95 for a water bottle' do
        expect(subject.checkout(0001)).to eq 50
      end
    end

  end

end
