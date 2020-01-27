require 'bank_account'

RSpec.describe BankAccount do
  let(:test_account) { described_class.new }

  it 'allows an owner to deposit coins' do
    expect(subject.deposit(300)).to eq 'You have deposited 300.00 coins'
  end

  it 'allows an owner to withdraw coins' do
    test_account.deposit(500)

    expect(test_account.withdraw(400)).to eq 'You have withdrawn 400.00 coins'
  end

  it 'allows an owner to see their current balance' do
    test_account.deposit(60)
    test_account.withdraw(50)

    expect(test_account.view_balance).to eq 'You have 10.00 coins'
  end

  it 'throws an error when owner attempts to withdraw more than is available' do
    expect { subject.withdraw(10) }.to raise_error BankAccount::INSUFFICIENT_FUNDS
  end

  it 'does not allow an account owner to deposit less than 5 coins' do
    expect { subject.deposit(4.5) }.to raise_error BankAccount::INSUFFICIENT_DEPOSIT
  end

  it 'does not allow an account owner to withdraw less than 5 coins' do
    expect { subject.deposit(4.5) }.to raise_error BankAccount::INSUFFICIENT_DEPOSIT
  end
end
