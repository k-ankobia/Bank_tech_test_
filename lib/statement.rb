class Statement
  def initialize
  end

def print_title 
  print 'date || credit || debit || balance'

end

  def date
    Time.now.strftime('%Y-%m-%d')
  end
end
