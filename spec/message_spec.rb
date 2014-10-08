require 'message'
require 'twilio-ruby'
# require 'web_mock'

describe Message do

	let(:message) { Message.new }

	context 'it should be able to send an order confirmation' do

		it 'and have a to number' do
		expect(message.send_message.to).to include('+447585309858')
		end

		it 'and have a from number' do
		expect(message.send_message.from).to include('+441344231325')
		end

		it 'with a delivery time' do
		end

	end
	
end