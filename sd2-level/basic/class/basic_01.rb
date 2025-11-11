class Person
    @@total_accounts = 0
    @@bank_name = "Ruby Bank"
    def initialize(owner, balance)
        @owner = owner
        @balance = balance
        @@total_accounts += 1
    end
    
    def account_info
        puts "#{@owner} and #{@balance} and bank #{@@bank_name}"
    end

    def self.total_accounts
        @@total_accounts
    end    
end

account1 = Person.new("sanket", "34000")
account2 = Person.new("san", "1200")

puts account1.account_info
puts account2.account_info

puts Person.total_accounts

