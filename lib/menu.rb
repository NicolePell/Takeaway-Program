class Menu

	attr_reader :dishes

	def initialize
		@dishes = [Dish.chicken_teriyaki_bento, Dish.tonkotsu_ramen, Dish.miso_soup, Dish.sushi_selection, Dish.wagyu_beef]
		# @dishes = []
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


# '1. Chicken ...........£ 4.5
#  2. Miso Soup .........£ 4.6'