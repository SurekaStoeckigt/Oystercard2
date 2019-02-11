<<<<<<< HEAD
require 'oystercard'
describe Oystercard do


  it 'has a balance of zero' do
  expect(subject.balance).to eq(0)
  end


  describe '#top_up' do

    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'can top up the balance' do
    expect { subject.top_up 2 }.to change{ subject.balance }.by 2
    # is 1 here a reference to the argument? NO IT IS AN AMOUNT

  end

  it 'raises an error if the maximum balance is exceeded' do
   maximum_balance = Oystercard::MAX_LIMIT
   # why is there ::?
   subject.top_up(maximum_balance)
   expect{ subject.top_up 1 }.to raise_error 'Maximum balance exceeded'

 end

end

  describe '#deduct' do

  it 'deducts amount from balance' do
    o = Oystercard.new
    o.top_up(20)
    amount = 10
    expect {subject.deduct(amount)}. to change {subject.balance }.by -amount
  end
end


  describe '#in_journey?' do
    it 'is in journey if the card is in journey' do
      expect(subject.in_journey?).to eq false
      # here we use () instead of {} becaue it's an argument not a block
    end
  end

  describe '#touch_in' do
    it 'touches in and changes the value of in_journey to true' do
    subject.touch_in
    expect(subject.in_journey?).to eq true
    end
  end

  describe '#touch_out' do
    it 'touches out and changes the value of in_journey to false' do
    subject.touch_out
    expect(subject.in_journey?).to eq false
    end
  end

=======
describe Oystercard do
>>>>>>> 387740f44bba18da16714173a2d74635513981d7
end
