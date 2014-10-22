require 'dishes'

describe Dish do

	let(:dishes) { Dish.new(price,name) }
	let(:ctb) { Dish.chicken_teriyaki_bento }
	let(:tr) { Dish.tonkotsu_ramen }
	let(:ms) { Dish.miso_soup }
	let(:ss) { Dish.sushi_selection }
	let(:wb) { Dish.wagyu_beef }
	
	context 'on initialize' do

		it 'a dish can have a price' do
			expect(ctb.price).to eq(8.95)
		end

		it 'a dish can have a name' do
			expect(ctb.name).to eq("Chicken Teriyaki Bento")
		end 

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