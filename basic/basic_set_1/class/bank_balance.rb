  # •	Instance methods (called on objects → e1.details)
	# •	Class methods (called on class → Employee.total_employees)

class BankAccount
  @@total_balance = 0

  def initialize(owner, balance)
    @owner = owner
    @balance = balance
    @@total_balance += balance
  end

  # Instance method
  def deposit(amount)
    @balance += amount
    @@total_balance += amount
  end

  # class method
  def self.total_balance
    @@total_balance
  end
end

a1 = BankAccount.new("A", 1000)
a2 = BankAccount.new("B", 500)
a1.deposit(500)
puts BankAccount.total_balance