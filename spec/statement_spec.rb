require 'statement'

describe Statement do
subject(:statement) { described_class.new}
  describe '#print_title' do 
    it 'Can print bank statement title' do
      expect { statement.print_title }.to output('date || credit || debit || balance').to_stdout
    end
  end

  describe '#date' do
    it 'Can print the current date' do
      @date = Time.now
      allow(Time).to receive(:now).and_return(@date)
      expect { statement.date }.to output(@date.strftime('%Y-%m-%d')).to_stdout
    end
  end
end
