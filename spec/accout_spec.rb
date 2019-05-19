require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:day) { '12/03/2019' }
  let(:amount) { 200 }

  describe '#deposit' do
    it { is_expected.to respond_to(:deposit) }

    it 'can deposit and ammount into the account balance' do
      expect { account.deposit(100) }.to change { account.balance }.by(100)
    end

    it 'can print a transaction after a deposit' do 
      allow(account).to receive(:date).and_return(day)
      account.deposit(amount)
      expect(account.transaction).to eq([[day, ' ', amount, account.balance]])
    end
  end

  describe '#withdraw' do
    it 'can withdraw and ammount into the account balance' do
      expect { account.withdraw(100) }.to change { account.balance }.by(-100)
    end

    it 'can print a transaction after a withdraw' do 
      allow(account).to receive(:date).and_return(day)
      account.withdraw(amount)
      expect(account.transaction).to eq([[day, amount, ' ', account.balance]])
    end

  end
end
