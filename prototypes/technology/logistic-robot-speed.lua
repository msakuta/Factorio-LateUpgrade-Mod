
require("config")
require("common")

local minlevel = 6
local maxlevel = 30

for i=minlevel,maxlevel do
	data:extend({
		createupgrade(i, {
			name_prefix = "worker-robots-speed-",
			icon = "__base__/graphics/technology/worker-robots-speed.png",
			pack_r = 1 + ord(6 <= i),		-- Red science
			pack_g = 1 + ord(8 <= i),		-- Green science
			pack_b = 1 + ord(10 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = 10 + i * 10,
			count = math.floor(CountFactor * 100 * 2 ^ (i / 3)),
			modifier = 0.40 + i * 0.05,
			modifiertype = "worker-robot-speed",
			neededscience = "logistic-robotics",
			stageusage = false,
			order = "c-k-f-a" -- Order in science-screen.
		})
	})
end
