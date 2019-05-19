require_relative 'helper'
require_relative 'statement'

class Account
  include Helper
  attr_reader :balance, :transaction

  DEFAULT_BALANCE = 3000.00

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction = []
  end

  def deposit(amount)
    @balance += amount
    @transaction << [date, format('%.2f', amount), ' ', format('%.2f', @balance)]
    end

  def withdraw(amount)
    @balance -= amount
    @transaction << [date, ' ', format('%.2f', amount), format('%.2f', @balance)]
  end
end
