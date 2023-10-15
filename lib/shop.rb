class Shop

  STOCK = {
    items: {
      GR1: { 
        cost: 3.11,
        name: 'green tea'
      },
      SR1: { 
        cost: 5.00,
        name: 'strawberries'
      },
      CF1: { 
        cost: 11.23,
        name: 'coffee'
      }
    }
  }

  def self.item_cost(item)
      STOCK[:items][item.to_sym][:cost]
  end
end