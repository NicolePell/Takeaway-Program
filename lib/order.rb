class Order

	attr_reader :total_order

	def initialize
		@total_order = []
	end

	def add_to_order(line_item)
		total_order << line_item
	end

	def total_order_cost
		total_order.inject(0) { |sum, dish| sum + dish.subtotal }
	end

end