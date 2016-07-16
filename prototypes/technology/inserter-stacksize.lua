
require("config")
require("common")

local minlevel = 8
local maxlevel = 25

for i=minlevel,maxlevel do
	local t = createupgrade(i, {
		name_prefix = "inserter-capacity-bonus-",
		icon = "__base__/graphics/technology/inserter-capacity.png",
		pack_r = 4,		-- Red science
		pack_g = 4,		-- Green science
		pack_b = 3,		-- Blue science
		pack_a = 2,		-- Alien science
		time = math.max(30, i * 5),
		count = CountFactor * math.floor(50 * 2 ^ (i / 2)),
		modifier = 2,
		modifiertype = "stack-inserter-capacity-bonus",
		neededscience = "logistics",
		order = "c-k-g-a" -- Order in science-screen.
	})

	-- Non-stack inserters benefit from upgrade once in a while
	if (i + 2) % 5 == 0 then
		table.insert(t.effects, {
			type = "inserter-stack-size-bonus",
			modifier = 1
		})
	end

	data:extend({t})
end
