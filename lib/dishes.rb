class Dish

	attr_accessor :price, :name

	def initialize(price: 0.0, name: 'dish')
		@price = price
		@name = name
	end

	def self.chicken_teriyaki_bento
		new(price: 8.95, name: 'Chicken Teriyaki Bento')
	end

	def self.tonkotsu_ramen
		new(price: 9.95, name: 'Tonkotsu Ramen')
	end

	def self.miso_soup
		new(price: 5.45, name: 'Miso Soup')
	end

	def self.sushi_selection
		new(price: 12.00, name: 'Sushi Selection')
	end

	def self.wagyu_beef
		new(price: 15.00, name: 'Wagyu Beef')
	end

end