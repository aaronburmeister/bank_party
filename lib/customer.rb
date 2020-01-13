class Customer
    attr_reader :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def accounts
        Account.all.select do |account|
            self == account.customer
        end
    end

    def banks
        accounts.map do |account|
            account.bank.name
        end.uniq
    end

    def new_account(number, open_year, bank)
        Account.new(number, open_year, bank, self)
    end
    
    def self.average_number_of_accounts
        Account.all.length / all.length.to_f
    end

end