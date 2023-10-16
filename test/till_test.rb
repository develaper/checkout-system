require 'minitest/autorun'
require './lib/till'

class TestTill < Minitest::Test
  def test_total_cost_with_example_list_without_discounts
    items = ["GR1", "SR1", "CF1"]
    assert_equal 19.34, Till.total_cost(items)
  end
  def test_total_cost_with_green_tea_discount
    items = ["GR1", "GR1"]
    assert_equal 3.11, Till.total_cost(items)
  end
  def test_total_cost_with_green_tea_discount_only_for_pairs
    items = ["GR1", "GR1", "GR1"]
    assert_equal 6.22, Till.total_cost(items)
  end
  def test_total_cost_with_strawberries_discount
    items = ["SR1", "SR1", "GR1", "SR1"]
    assert_equal 16.61, Till.total_cost(items)
  end
  def test_total_cost_with_coffee_discount
    items = ["GR1", "CF1", "SR1", "CF1", "CF1"]
    assert_equal 30.57, Till.total_cost(items)
  end
  def test_total_cost_with_coffee_discount_and_green_tea_discount
    items = ["GR1", "CF1", "SR1", "CF1", "CF1", "GR1"]
    assert_equal 30.57, Till.total_cost(items)
  end
end