require('minitest/autorun')
require('minitest/emoji')
require_relative('../caraoke_bar.rb')
require_relative('../customer.rb')


class TestCCCaraokeBar < MiniTest::Test

  def setup
    @bar = CCCaraokeBar.new("CodeClan Carakoke!", 35)

    @customer1 = Customer.new("Matthew", 100)
    @customer2 = Customer.new("Jennifer", 20)
  end


  def test_bar_exists
    assert_equal(CCCaraokeBar, @bar.class())
  end

  def test_bar_has_name
    assert_equal("CodeClan Carakoke!", @bar.name)
  end

  def test_bar_has_entry_fee
    assert_equal(35, @bar.entry_fee)
  end

  def test_customer_can_afford_entry
    assert_equal(true, @bar.can_afford_entry(@customer1))
    assert_equal(false, @bar.can_afford_entry(@customer2))
  end

end