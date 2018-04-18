require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Joe's Drinking Hole", 100)
    @drink = Drink.new("Joe's Beer", 1)
  end

  def test_get_name
    assert_equal("Joe's Drinking Hole", @pub.name())
  end

  def test_get_till_balance
    assert_equal(100, @pub.till())
  end

  def test_stock_take__when_empty
    assert_equal(0, @pub.stock_take())
  end

  def test_stock_take__when_not_empty
    @pub.add_drink_to_drink_stock(@drink)
    assert_equal(1, @pub.stock_take())
  end

  def test_add_drink_to_drink_stock
    @pub.add_drink_to_drink_stock(@drink)
    assert_equal(1, @pub.stock_take())
  end
end
