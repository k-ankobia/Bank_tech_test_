require 'account'

describe Account do
  subject(:account) { described_class.new }
  describe '#deposit' do
    it { is_expected.to respond_to(:deposit) }

    it 'can deposit and ammount into the account balance' do
      expect { account.deposit(100) }.to change { account.balance }.by(100)
    end
  end

  describe '#withdraw' do
    it 'can withdraw and ammount into the account balance' do
      expect { account.withdraw(100) }.to change { account.balance }.by(-100)
    end
  end
end
