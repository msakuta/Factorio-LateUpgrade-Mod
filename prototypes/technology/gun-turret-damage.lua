
require("config")
require("common")

local maxlevels = 25

for i=7,maxlevels do
	data:extend({
		createupgrade(i, {
			name_prefix = "gun-turret-damage-",
			icon = "__base__/graphics/technology/gun-turret-damage.png",
			pack_r = 1 + ord(7 <= i),		-- Red science
			pack_g = 1 + ord(9 <= i),		-- Green science
			pack_b = 1 + ord(11 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = i * 10,
			count = CountFactor * math.floor(100 * 2 ^ (i / 3)),
			modifier = 0.40,
			modifiertype = "turret-attack",
			neededscience = "turrets",
			ammo_category = "gun-turret",
			turret_id = "gun-turret",
			stageusage = false,
			order = "e-o-a" -- Order in science-screen.
		})
	})
end
