
require("config")
require("common")

local minlevel = 3
local maxlevel = 20

for i=minlevel,maxlevel do
	data:extend({
		createupgrade(i, {
			name_prefix = "character-logistic-trash-slots-",
			icon = "__base__/graphics/technology/character-logistic-trash-slots.png",
			pack_r = 1 + ord(4 <= i),		-- Red science
			pack_g = 1 + ord(6 <= i),		-- Green science
			pack_b = 1 + ord(8 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = math.max(30, i * 5),
			count = math.floor(CountFactor * 200 * 2 ^ (i / 2)),
			-- Only 2 slots per upgrade may seem too few, but we'd run out of screen space if we hav many.
			-- Also note that the maximum level (20) has modifier 1, to make the total a multiple of 5.
			modifier = 1 + ord(i <= 19),
			modifiertype = "character-logistic-trash-slots",
			neededscience = "logistic-robotics",
			order = "c-k-f-a" -- Order in science-screen.
		})
	})
end
