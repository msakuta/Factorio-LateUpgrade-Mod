
require("config")
require("common")

local minlevel = 7
local maxlevel = 25

for i=minlevel,maxlevel do
	data:extend({
		createupgrade(i, {
			name_prefix = "laser-turret-speed-",
			icon = "__base__/graphics/technology/laser-turret-speed.png",
			pack_r = 1 + ord(7 <= i),		-- Red science
			pack_g = 1 + ord(9 <= i),		-- Green science
			pack_b = 1 + ord(11 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = i * 10,
			count = CountFactor * math.floor(100 * 2 ^ (i / 3)),
			modifier = 0.30,
			modifiertype = "gun-speed",
			neededscience = "laser-turrets",
			ammo_category = "laser-turret",
			turret_id = "laser-turret",
			stageusage = false,
			order = "e-n-g" -- Order in science-screen.
		})
	})
end
