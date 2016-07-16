
require("config")
require("common")

local minlevel = 6
local maxlevel = 25

for i=minlevel,maxlevel do
	data:extend({
		createupgrade(i, {
			name_prefix = "grenade-damage-",
			icon = "__base__/graphics/technology/grenade-damage.png",
			pack_r = 1 + ord(7 <= i),		-- Red science
			pack_g = 1 + ord(9 <= i),		-- Green science
			pack_b = 1 + ord(11 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = 10 + i * 10,
			count = math.floor(CountFactor * 150 * 2 ^ (i / 3)),
			modifier = "0.2",
			modifiertype = "ammo-damage",
			ammo_category = "grenade",
			neededscience = "military-2",
			order = "e-n-a" -- Order in science-screen.
		})
	})
end
