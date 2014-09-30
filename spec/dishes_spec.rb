require 'dishes'

describe Dishes do

	let(:dishes) { Dishes.new(0) }
	let(:ctb) { Dishes.chicken_teriyaki_bento }
	
	context 'on initialize' do

		it 'a dish can have a price' do
			expect(ctb.price).to eq(8.95)
		end

		it 'a dish can have a name' do
			expect(ctb.name).to eq("Chicken Teriyaki Bento")
		end 

	end

end