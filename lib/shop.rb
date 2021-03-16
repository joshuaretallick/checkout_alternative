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
    apply_bulk_discount
  end

  private

  def apply_bulk_discount
    if @transaction.total > 75
      puts "BULK DISCOUNT APPLIED"
      return @transaction.total / 100 * 90
    else
      @transaction.total
    end
  end

end
