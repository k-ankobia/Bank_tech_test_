require 'account'

describe Account do
  describe '#deposit' do
    it { is_expected.to respond_to(:deposit) }
  end
end
