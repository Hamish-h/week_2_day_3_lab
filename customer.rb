class Customer
    attr_reader(:name)
    attr_accessor(:wallet)

    def initialize(name, wallet)
      @name = name
      @wallet = wallet
    end

    def add_money_to_wallet(money)
      @wallet += money
    end

    def pick_drink(pub)
      return pub.drink_stock[0]
    end

  end
