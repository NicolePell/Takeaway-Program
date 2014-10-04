class Dishes

	attr_accessor :price, :name

	def initialize(price, name)
		@price = price
		@name = name
	end

	def self.chicken_teriyaki_bento
		new(8.95, 'Chicken Teriyaki Bento')
	end

	def self.tonkotsu_ramen
		new(9.95, 'Tonkotsu Ramen')
	end

	def self.miso_soup
		new(5.45, 'Miso Soup')
	end

	def self.sushi_selection
		new(12.00, 'Sushi Selection')
	end

	def self.wagyu_beef
		new(15.00, 'Wagyu Beef')
	end

end