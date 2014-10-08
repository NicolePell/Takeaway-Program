require 'order'
require 'twilio-ruby'
require 'webmock/rspec'

describe Order do

	let(:order) { Order.new }
	let(:dish) { double :dish }
	let(:sushi_line) { double :line_item, dish: :sushi, quantity: 1, subtotal: 12 }
	let(:miso_line) { double :line_item, dish: :miso, quantity: 2, subtotal: 10.90 }
	let(:customer) { double :customer }
	
	it 'should be able to hold line items' do
		expect(order.total_order).to eq([])
	end

	it 'should be able to add a line item' do
		expect(order.add_to_order(sushi_line)).to eq([sushi_line]) 
	end

	it 'should be able to hold more than one line item' do
		order.add_to_order(sushi_line)
		order.add_to_order(miso_line)
		expect(order.total_order).to eq([sushi_line, miso_line])	
	end

	it 'should be able to calculate a total for the order' do
		order.add_to_order(sushi_line)
		order.add_to_order(miso_line)
		expect(order.total_order_cost).to eq(22.90)
	end

	it 'should be able to link to a customer' do
		expect(order.add_customer(customer)).not_to be nil
	end

	WebMock.disable_net_connect!(:allow_localhost => true)

	it 'it should send a message' do
		WebMock.stub_request(:post, "https://ACf891aedee1ec01bfe33224d882a65314:3e28b3a32fbd64fd596f26e089e97e33@api.twilio.com/2010-04-01/Accounts/ACf891aedee1ec01bfe33224d882a65314/Messages.json").
	    with(:body => {"Body"=>"Thank you! \n\t\t\tYour scrumptious yummies will be with you by 20:28", "From"=>"+441344231325", "To"=>"+447585309858"},
	    :headers => {'Accept'=>'application/json', 'Accept-Charset'=>'utf-8', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>'twilio-ruby/3.13.1 (ruby/x86_64-darwin13.0 2.1.2-p95)'}).
	    to_return(:status => 200, :body => "", :headers => {})
	end

end


# Include customer details|
