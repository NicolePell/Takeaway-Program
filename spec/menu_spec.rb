require 'menu'

describe Menu do
	let(:menu) { Menu.new }
 
			it 'with a list of 5 dishes' do
			 expect(menu.dish_count).to eq(5)
			end

			# it 'can add a dish' do
			# 	expect(menu.add_dish)
			# end
end