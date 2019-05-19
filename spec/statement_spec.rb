require 'statement'

describe Statement do

  describe '#print_title' do 
    it 'Can print bank statement title' do
      expect { subject.print_title }.to output('date || credit || debit || balance').to_stdout
    end
  end

  describe '#date' do
    xit 'Can print the current date' do
      @date = Time.now
      allow(Time).to receive(:now).and_return(@date)
      expect { subject.date }.to output(@date.strftime('%Y-%m-%d')).to_stdout
    end
  end
end
