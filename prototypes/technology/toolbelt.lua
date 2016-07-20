
require("config")

-- If Bob's logistics mod is loaded and there is an upgrade of toolbelt-3, change
-- its value so that it's as expensive.
-- There's actually no way to tell what mods are loaded at this point other than
-- looking into data.raw and see if a prototype specific to the mod exists.
-- It is very possible that another mod has technology called "toolbelt-2",
-- so we don't want to assume it's Bob's mod. We'll just rewrite the count for
-- research cycles and leave other parameters intact in order to avoid dependency
-- problem.
if data.raw.technology["toolbelt-2"] then
	data.raw.technology["toolbelt-2"].unit.count = math.floor(CountFactor * 500)
	if data.raw.technology["toolbelt-3"] then
		data.raw.technology["toolbelt-3"].unit.count = math.floor(CountFactor * 1000)
	end
else
	data:extend(
	{
	  {
	    type = "technology",
	    name = "toolbelt-2",
	    icon = "__base__/graphics/technology/toolbelt.png",
	    effects =
	    {
	      {
	        type = "num-quick-bars",
	        modifier = 1
	      }
	    },
	    prerequisites = {"toolbelt"},
	    unit =
	    {
	      count = CountFactor * 500,
	      ingredients =
	      {
	        {"science-pack-1", 1},
	        {"science-pack-2", 1},
	        {"science-pack-3", 1},
	        {"alien-science-pack", 1}
	      },
	      time = 30
	    },
	    order = "c-k-n"
	  }
	}
	)
end
