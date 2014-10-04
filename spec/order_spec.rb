require 'order'

describe Order do

	let(:order) { Order.new }
	let(:dish) { double :dish }
	let(:line_item) { double :line_item }
	
	it 'should be able to add a line item' do
		expect(order.add_line_item(dish)).to eq(dish) 
	end

end



# Order
# ------
# Responsibilities|Collaborators
# ----------------|-------------
# Be able to show chosen dishes|Line item
# Be able to show quantities|Menu
# Be able to show prices|Customer
# Be able to calculate total price|
# Include customer details|
