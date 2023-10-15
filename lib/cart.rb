class Cart
  attr_accessor :items

  def initialize
    @items = []
  end

  # Takes an Array of items
  # Concatenates items to the existing ones if any
  #
  def add_items(items)
    @items += items
  end
end