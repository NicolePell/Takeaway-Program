class LineItem

	attr_accessor :quantity, :subtotal, :dish

	def initialize(dish, quantity)
		@dish = dish
		@quantity = quantity	
		@subtotal = dish.price * quantity	
	end


end