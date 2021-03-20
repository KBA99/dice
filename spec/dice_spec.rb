require 'dice.rb'

describe Dice do 
  
  describe 'roll' do 
    it 'responds to #roll' do
      expect(subject).to respond_to(:roll)
    end

    # running many times ensures that the number is within the range
    it 'returns a number of 1 to 6 after rolling' do
      100.times do
      expect(subject.roll).to be_between(1,6).inclusive
      end
    end

    describe 'it allows you to roll mutiple amounts of dices'
      it 'allows you to choose the amount of multiple dice' do
        expect(subject).to respond_to(:dice).with(1).argument
      end

      it 'returns the number of rolls for the amount of dice the you choose' do
        array = []
        number = 5
        5.times { array.push(subject.roll) }
        expect(subject.dice(4).length).to eq(4)
      #   p array
      # # end
      end
  end
end