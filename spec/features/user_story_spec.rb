require 'account'
require 'statement'

describe 'User interaction' do

  it 'shows complete functionality of the bank account' do
    day = '19/05/2019'
    my_account = Account.new
    allow(my_account).to receive(:date).and_return(day)
    my_account.deposit(500)
    my_account.deposit(2000)
    my_account.withdraw(500)
    my_statement = Statement.new(my_account.transaction)
    my_statement.format_statement(my_account.transaction)

    expect output("date || credit || debit || balance
  19/05/2019 ||   || 500.00 || 5000.00
  19/05/2019 || 2000.00 ||   || 5500.00
  19/05/2019 || 500.00 ||   || 3500.00").to_stdout
  end

end

