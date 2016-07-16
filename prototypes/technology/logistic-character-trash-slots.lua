
require("config")
require("common")

local minlevel = 3
local maxlevel = 25

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
			count = math.floor(CountFactor * 100 * 2 ^ (i / 3)),
			-- Only 2 slots per upgrade may seem too few, but we'd have hundreds of slots on level 25 if we use 5 (vanilla value).
			modifier = 2,
			modifiertype = "character-logistic-trash-slots",
			neededscience = "logistic-robotics",
			order = "c-k-f-a" -- Order in science-screen.
		})
	})
end
