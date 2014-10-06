require 'customer'

describe Customer do

	let(:customer) { Customer.new('Nicole', +447585309858) }
	
	it 'should have a name' do
		expect(customer.name).to eq 'Nicole'
	end

	it 'should have a contact number' do
		expect(customer.number).to eq +447585309858
	end


	
end

