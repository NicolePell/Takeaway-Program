class LineItem

	attr_accessor :name, :price, :quantity, :subtotal

	def initialize(name, quantity)
		@name = dish.name
		@price = dish.price
		@quantity = quantity	
		@subtotal = dish.price * quantity	
	end

end