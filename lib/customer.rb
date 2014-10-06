class Customer

	attr_reader :name, :number

	def initialize(name, number)
		@name = name
		@number = number
	end






end


# line item is initalised with a dish and quantity
# then line item holds subtotal of line
# then line can be added to Order
# then order calculates total cost from line subtotals


# Customer needs to give line item; dish and quantity