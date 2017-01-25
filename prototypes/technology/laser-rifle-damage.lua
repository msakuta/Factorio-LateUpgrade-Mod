
require("config")
require("common")

local minlevel = 7
local maxlevel = 25

for i=minlevel,maxlevel do
	data:extend({
		createupgrade(i, {
			name_prefix = "bob-laser-rifle-damage-",
			icon = "__bobwarfare__/graphics/icons/technology/laser-rifle-damage.png",
			pack_r = 1 + ord(7 <= i),		-- Red science
			pack_g = 1 + ord(9 <= i),		-- Green science
			pack_b = 1 + ord(11 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = i * 10,
			count = math.floor(CountFactor * 100 * 2 ^ (i / 3)),
			modifier = 0.40,
			modifiertype = "ammo-damage",
			neededscience = "bob-laser-rifle",
			ammo_category = "laser-rifle",
			stageusage = false,
			order = "e-n-a" -- Order in science-screen.
		})
	})
end
