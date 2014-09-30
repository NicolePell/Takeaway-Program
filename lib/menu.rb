class Menu

	def dishes
		@dishes = [Dishes.chicken_teriyaki_bento, Dishes.tonkotsu_ramen, Dishes.miso_soup, Dishes.sushi_selection, Dishes.wagyu_beef]	
	end

	def dish_count
		dishes.count
	end

end