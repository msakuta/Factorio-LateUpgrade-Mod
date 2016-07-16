
require("config")
require("common")

local maxlevels = 25

for i=6,maxlevels do
	data:extend({
		createupgrade(i, {
			name_prefix = "combat-robot-damage-",
			icon = "__base__/graphics/technology/combat-robot-damage.png",
			pack_r = 1 + ord(2 <= i),		-- Red science
			pack_g = 1 + ord(2 <= i),		-- Green science
			pack_b = 1 + ord(6 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = math.max(30, i * 5),
			count = CountFactor * math.floor(100 * 2 ^ (i / 3)),
			effects = {
				{
					type = "ammo-damage",
					ammo_category = "combat-robot-laser",
					modifier = 0.05 + i * 0.05,
				},
				{
					type = "ammo-damage",
					ammo_category = "combat-robot-beam",
					modifier = 0.05 + i * 0.05,
				}
			},
			neededscience = "combat-robotics",
			stageusage = false,
			order = "e-p-c" -- Order in science-screen.
		})
	})
end
