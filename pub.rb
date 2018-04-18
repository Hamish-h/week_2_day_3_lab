class Pub
  attr_reader(:name)
  attr_accessor(:till, :drink_stock)

  def initialize(name, till)
    @name = name
    @till = till
    @drink_stock = []
  end

end
