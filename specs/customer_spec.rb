require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../customer.rb")
require_relative("../drink")

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Hamish", 0)
    @pub = Pub.new("Joe's Drinking Hole", 100)
    @drink = Drink.new("Joe's Beer", 1)
    @customer_money = 10
  end


  def test_get_name
    assert_equal("Hamish", @customer.name())
  end

  def test_count_contents_of_wallet__when_empty
    assert_equal(0, @customer.wallet())
  end

  def test_count_contents_of_wallet__when_not_empty
    @customer.add_money_to_wallet(@customer_money)
    assert_equal(10, @customer.wallet())
  end

  def test_add_money_to_wallet
    @customer.add_money_to_wallet(@customer_money)
    assert_equal(10, @customer.wallet())
  end

  def test_pick_drink__fridge_not_empty
    @pub.add_drink_to_drink_stock(@drink)
    assert_equal(@drink, @customer.pick_drink(@pub))
  end









end
