class Checkout

  def checkout(items)
    edit = items.split(',')
    @cost = 0
    calc(edit)
    if @cost > 75
      return "Total Price: $#{(@cost / 100 * 90).round(2)}"
    else
      return "Total Price: $#{@cost.round(2)}"
    end
  end

  private

  def calc(items)
    items.each do |item|
      @cost += case item
      when '0001'
        if items.count('0001') > 1
          22.99
        else
          24.95
        end
      when '0002'
        65.00
      when '0003'
        3.99
      end
    end
  end



end
