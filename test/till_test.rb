require 'minitest/autorun'
require './lib/till'

class TestTill < Minitest::Test
  def test_total_cost_with_example_list
    items = ["GR1", "SR1", "CF1"]
    assert_equal 19.34, Till.total_cost(items)
  end
end