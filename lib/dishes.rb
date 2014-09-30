class Dishes

	attr_accessor :price, :name

	def initialize(price, name)
		@price = price
		@name = name
	end

	# def name
	# 	"Chicken Teriyaki Bento"
	# end

	def self.chicken_teriyaki_bento
		new(8.95,"Chicken Teriyaki Bento")
	end

end