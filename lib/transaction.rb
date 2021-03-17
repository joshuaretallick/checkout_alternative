require_relative 'inventory'

class Transaction

  attr_reader :transaction, :inventory, :total

  def initialize
    @transaction = []
    @inventory = Inventory::INVENTORY
    @total = 0
  end

  def add(item)
    fail "SKU is invalid!" unless has_item?(item)
    transaction << item
    name_item(item)
    subtotal(item)
  end

  def has_item?(item)
    !@inventory[item].nil?
  end

  private

  def subtotal(item)
    @total += inventory[item]
  end

  def name_item(item)
    case item
    when '0001'
      puts "Water Bottle added to cart"
    when '0002'
      puts "Hoodie added to cart"
    when '0003'
      puts "Sticker Set added to cart"
    end
  end

end
