class Bank
    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def accounts
        Account.all.select do |account|
            self == account.bank
        end
    end

    def customers
        accounts.map do |account|
            account.customer
        end.uniq
    end

    def new_account(number, open_year, customer)
        Account.new(number, open_year, self, customer)
    end

    def oldest_account
        accounts.min_by do |account|
            account.open_year
        end
    end

    def average_customer_age
        customers.reduce(0) do |sum, customer|
            sum + customer.age
        end.to_f / customers.length
    end

    def self.most_customers
        bank_with_the_most_customers = all.max_by do |bank|
            bank.customers.length
        end
        puts "#{bank_with_the_most_customers.name} Bank has #{bank_with_the_most_customers.customers.length} customers."
        bank_with_the_most_customers
    end

    def self.customer_count
        banks = {}
        all.each do |bank|
            banks[bank.name] = bank.customers.length
        end
        banks
    end

end 
