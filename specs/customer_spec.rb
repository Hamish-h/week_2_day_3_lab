require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../customer.rb")

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Hamish", 0)
  end


  def test_get_name
    assert_equal("Hamish", @customer.name())
  end












end
