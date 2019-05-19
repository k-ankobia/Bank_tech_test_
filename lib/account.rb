require_relative 'helper'
class Account
  include Helper
  attr_reader :balance, :transaction

  DEFAULT_BALANCE = 3000

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction = []
  end

  def deposit(amount)
    @balance += amount
    @transaction << [date, amount, ' ', @balance]
  end
  
  def withdraw(amount)
    @balance -= amount
    @transaction << [date, amount, ' ', @balance]
  end
end
