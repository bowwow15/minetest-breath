minetest.register_craftitem("breath:bubble", {
	description = "Breathing bubble",
	inventory_image = "breath_bubble.png",
	on_use = function(itemstack, player, pointed_thing)
		player:set_breath(player:get_breath() + 1)
		itemstack:take_item()
		return itemstack
	end
})

minetest.register_craft({
	output = "breath:bubble 5",
	recipe = {
		{"vessels:glass_bottle", "", ""},
		{"", "", ""},
		{"", "",  ""}
	}
})
