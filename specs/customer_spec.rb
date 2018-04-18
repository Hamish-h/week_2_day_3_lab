require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../customer.rb")

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Hamish", 0)
    @money = 10
  end


  def test_get_name
    assert_equal("Hamish", @customer.name())
  end

  def test_count_contents_of_wallet__when_empty
    assert_equal(0, @customer.wallet())
  end

  def test_count_contents_of_wallet__when_not_empty

    assert_equal(0, @customer.wallet())
  end

  def test_add_money_to_wallet
    @customer.add_money_to_wallet(@money)
    assert_equal(10, @customer.wallet())
  end









end
