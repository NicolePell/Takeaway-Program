require 'order'

describe Order do

	let(:order) { Order.new }
	let(:dish) { double :dish }
	let(:sushi_line) { double :line_item, dish: :sushi, quantity: 1, subtotal: 12 }
	let(:miso_line) { double :line_item, dish: :miso, quantity: 2, subtotal: 10.90 }
	
	it 'should be able to hold line items' do
		expect(order.total_order).to eq([])
	end

	it 'should be able to add a line item' do
		expect(order.add_to_order(sushi_line)).to eq([sushi_line]) 
	end

	it 'should be able to hold more than one line item' do
		line1 = sushi_line
		line2 = miso_line
		order.add_to_order(line1)
		order.add_to_order(line2)
		expect(order.total_order).to eq([line1, line2])	
	end

	it 'should be able to calculate a total for the order' do
		order.add_to_order(sushi_line)
		order.add_to_order(miso_line)
		expect(order.total_order_cost).to eq(22.90)
	end

end


# Include customer details|
