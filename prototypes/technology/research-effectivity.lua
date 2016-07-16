
require("config")
require("common")

local minlevel = 5
local maxlevel = 25

for i=minlevel,maxlevel do
	data:extend({
		createupgrade(i, {
			name_prefix = "research-speed-",
			icon = "__base__/graphics/technology/research-speed.png",
			pack_r = 1,						-- Red science
			pack_g = 1,						-- Green science
			pack_b = ord(3 <= i),			-- Blue science
			pack_a = ord(5 <= i),			-- Alien science
			time = math.max(30, i * 5),
			count = math.floor(CountFactor * 250 * 2 ^ (i / 3)),
			modifier = 0.3 + i * 0.05,
			modifiertype = "laboratory-speed",
			neededscience = "electronics",
			order = "c-m-a" -- Order in science-screen.
		})
	})
end
