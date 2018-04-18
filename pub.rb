class Pub
  attr_reader(:name)
  attr_accessor(:till, :drink_stock)

  def initialize(name, till)
    @name = name
    @till = till
    @drink_stock = []
  end

  def stock_take()
    return @drink_stock.count()
  end

  def add_drink_to_drink_stock(drink)
    @drink_stock << drink
  end

end
