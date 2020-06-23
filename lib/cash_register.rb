class CashRegister
  attr_accessor :total, :discount, :items
  ITEMS=[]
  @previous_total=0
  def initialize(disc=0)
    @total=0
    @discount=disc
  end
  def discount
    @discount
  end
  def add_item(title,price,quantity=1)
    @previous_total=@total
    @total+=(price*quantity)
    
    ITEMS << title
  end
  def apply_discount
    if @discount>0
      @total=@total-(@discount*@total)/100
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end
  def items
    ITEMS
  end
  def void_last_transaction
    @total=@previous_total
  end
end
