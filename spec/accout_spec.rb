require 'account'

describe Account do
  describe '#deposit' do
    it { is_expected.to respond_to(:deposit) }

    it 'can deposit and ammount into the account balance' do
      account = Account.new
      expect { account.deposit(100) }.to change { account.balance }.by(100)
    end
  end
end
