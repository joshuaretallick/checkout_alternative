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
    subtotal(item)
  end

  def has_item?(item)
    !@inventory[item].nil?
  end

  private

  def subtotal(item)
    @total += inventory[item]
  end

end
