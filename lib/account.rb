class Account
    attr_reader :number, :open_year, :bank, :customer

    @@all = []

    def initialize(number, open_year, bank, customer)
        @number = number
        @open_year = open_year
        @bank = bank
        @customer = customer
        @@all << self
    end

    def self.all
        @@all
    end

end