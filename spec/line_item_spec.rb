require 'line_item'

describe LineItem do

	let(:line_item) { LineItem.new(miso, 3) }
	let(:miso) { double :miso, name: :miso_soup, :price => 5.95 }	
	# let(:dish) { double :dish, name: true }
	
	it 'should show a dish name' do
		# allow(line_item).to receive(:dish)
		expect(line_item.dish.name).to eq(:miso_soup)
	end

	it 'should show a price' do
		expect(line_item.dish.price).to eq(5.95)
	end

	it 'should show quantity ordered' do
		expect(line_item.quantity).to eq(3)
	end

	it 'should show a subtotal' do
		expect(line_item.subtotal).to eq(17.85)
	end
end