
require("config")
require("common")

local minlevel = 4
local maxlevel = 25

for i=minlevel,maxlevel do
	data:extend({
		createupgrade(i, {
			name_prefix = "worker-robots-storage-",
			icon = "__base__/graphics/technology/worker-robots-storage.png",
			pack_r = 1 + ord(4 <= i),		-- Red science
			pack_g = 1 + ord(6 <= i),		-- Green science
			pack_b = 1 + ord(8 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = 20 + i * 10,
			count = CountFactor * math.floor(200 * 2 ^ (i / 2)),
			modifier = 1,
			modifiertype = "worker-robot-storage",
			neededscience = "logistic-robotics",
			stageusage = false,
			order = "c-k-g-a" -- Order in science-screen.
		})
	})
end
