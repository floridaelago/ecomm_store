class Cart 
  #Model not persisted in the database
  #Cart will have items, cart will have a total price
  # and tax

  #feature to add... adding line items with quantity

  attr_reader :items, :total_price, :taxes
  def initialize
  	@items = []
  	@total_price = 0.0
  	@taxes = 0.0
  end



  def add_line_item(product)
  	#finds if item is already in the cart
  	item = @items.find {|i| i.product_id == product.id}

  	if item 
  		item.quantity += 1
  	else
  		item = Lineitem.add_product(product)
  		@items << item

  	end
  	@total_price += product.price
  end


  def empty_cart_contents!
    @items = []
    @total_price = 0.0
    @taxes = 0.0
  end
end