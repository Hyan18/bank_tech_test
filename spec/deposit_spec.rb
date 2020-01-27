require 'deposit'

RSpec.describe Deposit do
  let(:current_balance) { 510 }
  let(:test_deposit) { Deposit.new(500, '10/01/2020', current_balance) }

  it 'takes an amount' do
    expect(test_deposit.view_amount).to eq '500.00'
  end

  it 'takes a date' do
    expect(test_deposit.date_created).to eq '10/01/2020'
  end

  it 'prints its log data' do
    expect(test_deposit.log_line).to eq "10/01/2020 || 500.00 || || 510.00"
  end
end
