require_relative 'inventory'
require_relative 'transaction'
require 'byebug'

class Shop

  attr_reader :transaction, :inventory, :final_total

  def initialize
    @inventory = Inventory.new
    @final_total = 0
  end

  def new_transaction
    @transaction = Transaction.new
  end

  def scan_item(sku)
    @transaction.add(sku)
  end

  def complete_transaction
    apply_water_discount
    apply_bulk_discount
  end

  private

  def apply_water_discount
    if @transaction.transaction.count('0001') > 1
      puts "MULTI-BUY WATER DISCOUNT APPLIED"
      @final_total = (@transaction.total - (@transaction.transaction.count('0001') * 1.96)).round(2)
    else
      @final_total = @transaction.total.round(2)
    end
  end

  def apply_bulk_discount
    if @final_total > 75
      puts "BULK DISCOUNT APPLIED"
      return (@final_total / 100 * 90).round(2)
    else
      @final_total.round(2)
    end
  end

end
