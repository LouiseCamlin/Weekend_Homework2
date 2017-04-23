require('minitest/autorun')
require('minitest/emoji')
require_relative('../customer.rb')

class TestCustomer < Minitest::Test

  def setup
    @customer = Customer.new("Louise", 30)
  end

  def test_customer_has_name
    assert_equal("Louise", @customer.name)
  end

  def test_customer_has_funds
    assert_equal(30, @customer.funds)
  end

end