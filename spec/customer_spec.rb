require 'customer'

describe Customer do

	let(:customer) { Customer.new }

	it 'should have a name' do
		expect(customer.name('Nicole')).to eq 'Nicole'
	end

	it 'should have a contact number' do
		expect(customer.number(+447585309858)).to eq +447585309858
	end
	
end