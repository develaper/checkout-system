require 'minitest/autorun'
require './lib/shop'

class TestShop < Minitest::Test
  def test_item_cost_with_green_tea
    item = "GR1"
    assert_equal 3.11, Shop.item_cost(item)
  end
  def test_item_cost_with_strawberries
    item = "SR1"
    assert_equal 5.00, Shop.item_cost(item)
  end
  def test_item_cost_with_coffee
    item = "CF1"
    assert_equal 11.23, Shop.item_cost(item)
  end
end