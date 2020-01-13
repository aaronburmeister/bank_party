require_relative '../config/environment'



# code here
cap_one = Bank.new("Capital One", "Denver")
first = Bank.new("First Bank", "Denver")
chase = Bank.new("Chase", "Denver")
usaa = Bank.new("USAA", "Houston")

john = Customer.new("John Smith", 35)
steph = Customer.new("Steph", 25)
corey = Customer.new("Corey", 31)
doug = Customer.new("Doug", 35)

john_account1 = Account.new("2934875328975", 2009, cap_one, john)
john_account2 = Account.new("234", 2013, first, john)
corey_account1 = Account.new("1337", 2020, usaa, corey)
corey_account2 = Account.new("12345", 2020, cap_one, corey)
doug_account1 = Account.new("29930485", 2016, chase, doug)
doug_account2 = Account.new("221213124", 2001, cap_one, doug)

binding.pry
0
