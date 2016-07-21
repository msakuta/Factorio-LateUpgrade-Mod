require("config")

function createupgrade(level, params)
	-- Detect Bob's tech mod by existence of science-pack-4 which only exists
	-- when the mod is active.
	local hasBobsMod = data.raw.tool["science-pack-4"] ~= nil

	local f_result =
	{
		type = "technology",
		name = params.name_prefix .. level,
		icon = params.icon,
		effects = params.effects or {
			{
				type = params.modifiertype,
				ammo_category = params.ammo_category,
				turret_id = params.turret_id,
				modifier = params.modifier
			}
		},
		prerequisites = {params.neededscience},
		unit =
		{
			ingredients = {
				{"science-pack-1", params.pack_r},
				{"science-pack-2", params.pack_g},
				{"science-pack-3", params.pack_b},
				{"alien-science-pack", params.pack_a},
			},
			time = params.time
		},
		upgrade = "true",
		order = params.order
	}

	f_result.unit.count = params.count

	if level > 1 then
		f_result.prerequisites = {params.name_prefix .. (level - 1)}
		if params.stageusage then
			if (f_modifier > upg_stage0modbound) and not upg_stage1reached then
				f_result.prerequisites[#f_result.prerequisites + 1] = upg_stage1prereq
				upg_stage1reached = true
			elseif  (f_modifier > upg_stage1modbound) and not upg_stage2reached then
				f_result.prerequisites[#f_result.prerequisites + 1] = upg_stage2prereq
				upg_stage2reached = true
			end
		end
	end

	if hasBobsMod and EnableBobsSciencePack4 then
		-- If count of science pack 4 is given by the caller, use it.
		-- Otherwise, copy count of blue science pack.
		local pack4count = params.pack_d or params.pack_b
		if 0 < pack4count then
			table.insert(f_result.unit.ingredients, {"science-pack-4", pack4count})
		end
	end
--[[
	if f_pack_red > 0 then
		table.insert(f_result.unit.ingredients, {"science-pack-1", f_pack_red})
	end
	if f_pack_green > 0 then
		table.insert(f_result.unit.ingredients, {"science-pack-2", f_pack_green})
	end
	if f_pack_blue > 0 then
		table.insert(f_result.unit.ingredients, {"science-pack-3", f_pack_blue})
	end
	if f_pack_alien > 0 then
		table.insert(f_result.unit.ingredients, {"alien-science-pack", f_pack_alien})
	end]]

	return f_result
end

-- Return 1 if i is true, otherwise 0. Would be nice if we could cast a boolean to an integer, but not the case
function ord(i)
	return i and 1 or 0
end
