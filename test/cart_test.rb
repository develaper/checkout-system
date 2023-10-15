require 'minitest/autorun'
require './lib/cart'

class TestCart < Minitest::Test
  def setup
    @cart = Cart.new
  end
  def test_initialize
    assert @cart.items.empty?
  end
end