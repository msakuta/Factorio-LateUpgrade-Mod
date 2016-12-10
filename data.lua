require("config")

if BulletDamageMod then
	require("prototypes.technology.bullet-damage")
end

if BulletSpeedMod then
	require("prototypes.technology.bullet-speed")
end

if CombatRobotsDamageMod then
	require("prototypes.technology.combat-robot-damage")
end

if CombatRobotsFollowerCountMod then
	require("prototypes.technology.combat-robot-followers")
end

if GunTurretDamageMod then
	require("prototypes.technology.gun-turret-damage")
end

if InserterStackSizeMod then
	require("prototypes.technology.inserter-stacksize")
end

if LaserTurretDamageMod then
	require("prototypes.technology.laser-turret-damage")
end

if LaserTurretSpeedMod then
	require("prototypes.technology.laser-turret-speed")
end

if FlamethrowerDamageMod then
	require("prototypes.technology.flamethrower-damage")
end

if GrenadeDamageMod then
	require("prototypes.technology.grenade-damage")
end

if LogisticCharacterSlotsMod then
	require("prototypes.technology.logistic-character-slots")
end

if LogisticCharacterTrashSlotsMod then
	require("prototypes.technology.logistic-character-trash-slots")
end

if LogisticRobotSpeedMod then
	require("prototypes.technology.logistic-robot-speed")
end

if LogisticRobotStackSizeMod then
	require("prototypes.technology.logistic-robot-stacksize")
end

if ResearchEffectivityMod then
	require("prototypes.technology.research-effectivity")
end

if RocketDamageMod then
	require("prototypes.technology.rocket-damage")
end

if RocketSpeedMod then
	require("prototypes.technology.rocket-speed")
end

if ShotgunShellDamageMod then
	require("prototypes.technology.shotgun-shell-damage")
end

if ShotgunShellSpeedMod then
	require("prototypes.technology.shotgun-shell-speed")
end

if AdditionalToolBeltMod then
	require("prototypes.technology.toolbelt")
end

-- Bobs Warfare Upgrades
if LaserRifleDamageMod then
	if data.raw.technology["bob-laser-rifle-damage-6"] then require("prototypes.technology.laser-rifle-damage") end
end

if LaserRifleSpeedMod then
	if data.raw.technology["bob-laser-rifle-speed-6"] then require("prototypes.technology.laser-rifle-speed") end
end

if TankCannonDamageMod then
	if data.raw.technology["bob-tank-cannon-damage-6"] then require("prototypes.technology.tank-cannon-damage") end
end

if TankCannonSpeedMod then
	if data.raw.technology["bob-tank-cannon-speed-6"] then require("prototypes.technology.tank-cannon-speed") end
end

if TankArtilleryDamageMod then
	if data.raw.technology["bob-tank-artillery-damage-6"] then require("prototypes.technology.tank-artillery-damage") end
end

if TankArtillerySpeedMod then
	if data.raw.technology["bob-tank-artillery-speed-6"] then require("prototypes.technology.tank-artillery-speed") end
end

if SniperTurretDamageMod then
	if data.raw.technology["bob-sniper-turret-damage-6"] then require("prototypes.technology.sniper-turret-damage") end
end














