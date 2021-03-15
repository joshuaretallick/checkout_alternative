class Checkout

  def checkout(items)
    @cost = 0
    calc(items.to_s.chars)
    @cost
  end

  private

  def calc(items)
    items.each do |item|
      @cost += case item
      when '1'
        50
      when '2'
        65
      when '3'
        3
      end
    end
  end

end
