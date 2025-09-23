class BankAccount
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount > @balance
      "Insufficient funds"
    else
      @balance -= amount
    end
  end
end

account = BankAccount.new(1000)
account.deposit(500)
puts account.withdraw(200)
puts account.balance