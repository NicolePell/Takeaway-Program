require 'line_item'

describe LineItem do

	let(:line_item) { LineItem.new(miso, 3) }
	let(:miso) { double :miso, :price => 5.95 }	
	let(:dish) { double :dish, name: true }

	
	
	it 'should show a dish name' do
		allow(line_item).to receive(:dish)
		expect(line_item.name).to eq('miso')
	end

	it 'should show a price' do
		expect(line_item.price).to eq(5.95)
	end

	it 'should show quantity ordered' do
		expect(line_item.quantity).to eq(3)
	end

	it 'should show a subtotal' do
		expect(line_item.subtotal).to eq(17.85)
	end
end