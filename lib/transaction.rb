class Transaction

  attr_reader :final_total, :product_list

  PRODUCT_LIST = {
    '0001'=>24.95, #water bottle
    '0002'=>65.00, #hoodie
    '0003'=>3.99 #sticker set
  }

  def initialize
    @final_total = 0
    @product_list = PRODUCT_LIST
  end

  def scan_item(items)
    items.each do |product|
      @final_total += PRODUCT_LIST[product]
      return "#{product}: $#{PRODUCT_LIST[product]}, SUB-TOTAL: $#{@final_total.round(2)}"
    end
  end

  def total
    return "FINAL TOTAL: $#{@final_total.round(2)}"
  end

  # def total(basket)
  #   basket_items = basket.split(',')
  #   @final_total = 0
  #   scan_item(basket_items)
  #   if @final_total > 75
  #     return "Total Price: $#{(@final_total / 100 * 90).round(2)}"
  #   else
  #     return "Total Price: $#{@final_total.round(2)}"
  #   end
  # end
  #
  # private
  #
  # def scan_item(items)
  #   items.each do |item|
  #     @final_total += case item
  #     when '0001'
  #       if items.count('0001') > 1
  #         22.99
  #       else
  #         24.95
  #       end
  #     when '0002'
  #       65.00
  #     when '0003'
  #       3.99
  #     end
  #   end
  # end

end
