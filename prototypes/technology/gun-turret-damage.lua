
require("config")
require("common")

local research_effect ={
	{
		type = "turret-attack",
		turret_id = "gun-turret",
		modifier = 0.40,
	},
}
if data.raw["ammo-turret"]["bob-gun-turret-2"] then
	table.insert(research_effect, {type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = 0.40})
end
if data.raw["ammo-turret"]["bob-gun-turret-3"] then
	table.insert(research_effect, {type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = 0.40})
end
if data.raw["ammo-turret"]["bob-gun-turret-4"] then
	table.insert(research_effect, {type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = 0.40})
end
if data.raw["ammo-turret"]["bob-gun-turret-5"] then
	table.insert(research_effect, {type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = 0.40})
end


local minlevel = 7
local maxlevel = 25

for i=minlevel,maxlevel do
	data:extend({
		createupgrade(i, {
			name_prefix = "gun-turret-damage-",
			icon = "__base__/graphics/technology/gun-turret-damage.png",
			pack_r = 1 + ord(7 <= i),		-- Red science
			pack_g = 1 + ord(9 <= i),		-- Green science
			pack_b = 1 + ord(11 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = i * 10,
			count = math.floor(CountFactor * 100 * 2 ^ (i / 3)),
			effects = research_effect,
			neededscience = "turrets",
			stageusage = false,
			order = "e-o-a" -- Order in science-screen.
		})
	})
end
