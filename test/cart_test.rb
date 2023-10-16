require 'minitest/autorun'
require './lib/cart'

class TestCart < Minitest::Test
  def setup
    @cart = Cart.new
  end
  def test_initialize
    assert @cart.items.empty?
  end
  def test_add_items
    assert_equal [], @cart.items
    @cart.add_items(["GR1", "SR1"])
    assert_equal ["GR1", "SR1"], @cart.items
  end
end