class Order

	attr_accessor :total_order, :customer, :name, :number

	def initialize
		@total_order = []
	end

	def add_to_order(line_item)
		total_order << line_item
	end

	def total_order_cost
		total_order.inject(0) { |sum, dish| sum + dish.subtotal }
	end

	def add_customer(customer)
		customer = Customer.new(name, number)
	end

end