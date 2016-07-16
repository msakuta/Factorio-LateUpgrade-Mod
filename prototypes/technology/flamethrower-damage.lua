
require("config")
require("common")

local minlevel = 7
local maxlevel = 25

for i=minlevel,maxlevel do
	data:extend({
		createupgrade(i, {
			name_prefix = "flamethrower-damage-",
			icon = "__base__/graphics/technology/flamethrower-turret-damage.png",
			pack_r = 1 + ord(7 <= i),		-- Red science
			pack_g = 1 + ord(9 <= i),		-- Green science
			pack_b = 1 + ord(11 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = 10 + i * 10,
			count = math.floor(CountFactor * 150 * 2 ^ (i / 3)),
			effects = {
				{
					type = "ammo-damage",
					ammo_category = "flame-thrower",
					modifier = "0.2"
				},
				{
					type = "turret-attack",
					turret_id = "flamethrower-turret",
					modifier = "0.2"
				}
			},
			neededscience = "flame-thrower",
			order = "e-o-p-f" -- Order in science-screen.
		})
	})
end
