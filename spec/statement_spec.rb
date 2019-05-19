require 'statement'

describe Statement do
  let(:account_Double) { instance_double('Account', transaction: [['19/05/2019', 1000, '', 1000]]) }
  subject(:statement) { described_class.new(account_Double.transaction) }

  describe '#print_title' do
    it 'Can print bank statement title' do
      expect { statement.print_title }.to output("date || credit || debit || balance\n").to_stdout
    end
  end

  describe '#date' do
    it 'Can print the current date' do
      @date = Time.now
      allow(Time).to receive(:now).and_return(@date)
      expect { statement.date }.to output(@date.strftime('%Y-%m-%d')).to_stdout
    end
  end

  describe '#format_statement' do
    it 'can print the bank statement ' do
      expect { statement.format_statement(account_Double.transaction) }.to output("date || credit || debit || balance
19/05/2019 || 1000 ||  || 1000\n").to_stdout
    end
  end
end

# -19/05/2019 || 1000 ||  || 1000
# +19/05/2019 || 1000 ||   || 1000