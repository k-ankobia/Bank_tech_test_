require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:day) { '12/03/2019' }
  let(:amount) { 200.00 }

  describe '#deposit' do
    it { is_expected.to respond_to(:deposit) }

    it 'can deposit and ammount into the account balance' do
      expect { account.deposit(100.00) }.to change { account.balance }.by(100.00)
    end

    it 'can print a transaction after a deposit' do 
      allow(account).to receive(:date).and_return(day)
      account.deposit(amount)
      # expect(account.transaction).to eq([[day, ' ', format('%.2f', amount), format('%.2f',account.balance)]])
      expect(account.transaction).to eq([[day, '200.00', ' ', '3200.00']])
    end
  end

  describe '#withdraw' do
    it 'can withdraw and ammount into the account balance' do
      expect { account.withdraw(100.00) }.to change { account.balance }.by(-100.00)
    end

    it 'can print a transaction after a withdraw' do 
      allow(account).to receive(:date).and_return(day)
      account.withdraw(amount)
      expect(account.transaction).to eq([[day, ' ', '200.00', '2800.00']])
    end

  end
end
