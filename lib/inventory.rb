class Inventory

  INVENTORY = {
    '0001'=>24.95, #water bottle
    '0002'=>65.00, #hoodie
    '0003'=>3.99 #sticker set
  }

  attr_reader :inventory

  def initialize
    @inventory = INVENTORY
  end

  def show
    INVENTORY.map do |sku, price|
      "%s £%.2f" % [sku, price]
    end.join(", ")
  end

end
