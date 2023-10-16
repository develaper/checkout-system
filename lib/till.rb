require './lib/shop'

class Till
  # Params: Array of Strings
  # Returns Float
  #
  def self.total_cost(items)
    items.map{|item| Shop.item_cost(item)}.sum
  end
end