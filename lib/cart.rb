class Cart
  attr_accessor :items

  def initialize
    @items = []
  end

  # Params: Array of Strings
  # Concatenates items
  #
  def add_items(items)
    @items += items
  end
end