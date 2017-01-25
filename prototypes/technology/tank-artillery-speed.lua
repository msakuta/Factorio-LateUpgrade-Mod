
require("config")
require("common")

local minlevel = 7
local maxlevel = 25

for i=minlevel,maxlevel do
	data:extend({
		createupgrade(i, {
			name_prefix = "bob-tank-artillery-speed-",
			icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
			pack_r = 1 + ord(7 <= i),		-- Red science
			pack_g = 1 + ord(9 <= i),		-- Green science
			pack_b = 1 + ord(11 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = i * 10,
			count = math.floor(CountFactor * 100 * 2 ^ (i / 3)),
			modifier = 0.30,
			modifiertype = "gun-speed",
			neededscience = "bob-tanks-2",
			ammo_category = "artillery-shell",
			stageusage = false,
			order = "e-n-g" -- Order in science-screen.
		})
	})
end
