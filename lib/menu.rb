class Menu

	attr_reader :dishes

	def initialize
		@dishes = [Dish.chicken_teriyaki_bento, Dish.tonkotsu_ramen, Dish.miso_soup, Dish.sushi_selection, Dish.wagyu_beef]
	end

	def add(dish)
		@dishes << dish
	end

	def dish_count
		dishes.count
	end

	def show
	end

end
