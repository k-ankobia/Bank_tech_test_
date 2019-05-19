module Helper
  def date
    Time.now.strftime('%Y-%m-%d')
  end

  # TODO:
  def formatter(account_details)
    account_details.reverse_each do |value|
      puts value.join(',').gsub!(',', ' || ')
    end
  end
end

