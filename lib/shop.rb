require_relative 'inventory'
require_relative 'transaction'

class Shop

  attr_reader :transaction, :inventory

  def initialize
    @inventory = Inventory.new
  end

  def new_transaction
    @transaction = Transaction.new
  end

  def scan_item(sku)
    @transaction.add(sku)
  end

  def complete_transaction
    @transaction.total
  end

end
