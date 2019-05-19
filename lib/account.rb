class Account
  attr_reader :balance
  DEFAULT_BALANCE = 3000
  def initialize
    @balance = DEFAULT_BALANCE
  end

  def deposit(amount)
    @balance += amount
  end
end
