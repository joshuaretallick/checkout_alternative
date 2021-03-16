require_relative './inventory.rb'
require_relative './transaction.rb'

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

end
