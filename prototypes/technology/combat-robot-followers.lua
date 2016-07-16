
require("config")
require("common")

local maxlevels = 25

for i=21,maxlevels do
	data:extend({
		createupgrade(i, {
			name_prefix = "follower-robot-count-",
			icon = "__base__/graphics/technology/follower-robots.png",
			pack_r = 1,						-- Red science
			pack_g = 1,						-- Green science
			pack_b = ord(2 <= i),			-- Blue science
			pack_a = ord(6 <= i),			-- Alien science
			time = 30,
			count = CountFactor * math.floor(50 * 2 ^ (i / 3)),
			modifier = 10,
			modifiertype = "maximum-following-robots-count",
			neededscience = "combat-robotics",
			order = "e-p-b-c" -- Order in science-screen.
		})
	})
end
