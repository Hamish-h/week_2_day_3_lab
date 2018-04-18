require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def test_get_name
    drink = Drink.new("Whisky", 1)
    assert_equal("Whisky", drink.name())
  end

  def test_get_price
    drink = Drink.new("Whisky", 1)
    assert_equal(1, drink.price())
  end

end
