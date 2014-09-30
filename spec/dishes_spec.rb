require 'dishes'

describe Dishes do

	let(:dishes) { Dishes.new(0) }
	let(:ctb) { Dishes.chicken_teriyaki_bento }
	let(:tr) { Dishes.tonkotsu_ramen }
	let(:ms) { Dishes.miso_soup }
	let(:ss) { Dishes.sushi_selection }
	let(:wb) { Dishes.wagyu_beef }
	
	context 'on initialize' do

		it 'a dish can have a price' do
			expect(ctb.price).to eq(8.95)
		end

		it 'a dish can have a name' do
			expect(ctb.name).to eq("Chicken Teriyaki Bento")
		end 

		# it 'a dish can have ingredients' do
		# end
	end

	context 'different types of dishes' do

		it 'has a price of 8.95 if it is Chicken Teryiyaki Bento' do
			expect(ctb.price).to eq(8.95)
		end

		it 'has a price of 9.95 if it is Tonkotsu Ramen' do
			expect(tr.price).to eq(9.95)
		end

		it 'has a price of 5.45 if it is Miso Soup' do
			expect(ms.price).to eq(5.45)
		end

		it 'has a price of 12.00 if it is Sushi Selection' do
			expect(ss.price).to eq(12.00)
		end

		it 'has a price of 15.00 if it is Wagyu Beef' do
			expect(wb.price).to eq(15.00)
		end
	
	end

end