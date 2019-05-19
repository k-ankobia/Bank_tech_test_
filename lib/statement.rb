require_relative 'helper'

class Statement
  include Helper
  attr_reader :account_details

  def initialize(account_details)
    @account_details = account_details
  end

  def print_title
    puts 'date || credit || debit || balance'
  end

  def date
    print Time.now.strftime('%Y-%m-%d')
  end

  def print_statement(account_details)
    print_title
    formatter(account_details)
  end
end
