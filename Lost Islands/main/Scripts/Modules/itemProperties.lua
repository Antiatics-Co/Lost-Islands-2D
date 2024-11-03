
local itm = require("main.Scripts.Modules.items")

local M = {}

local MAXENERGY = 100
local MINENERGY = 0
local MAXHEALTH = 100
local MINHEALTH = 1

local health = MAXHEALTH
local equipped = {}
local shieldUp = false
local energy = MAXENERGY

local equippedMelee = { main = nil, side = nil }

local function useEnergy(usage)
	energy = energy - usage

	if energy < MINENERGY then
		energy = 0
	end
end

--the get properties function will be called from setup
local function getArmourProperties(items) --ID =  num 
	if M.isItemEquipped("lightArmour") then
		return(.10)

	elseif M.isItemEquipped("heavyArmour") then
		return(.30)

	elseif M.isItemEquipped("magicArmour") then
		if(energy == 0) then
			return(0)
		else
			useEnergy(10)
			return(1)
		end
	else
		return(0)
	end
end

local function getShieldProperties(items) --ID = { name, type }
	if M.isItemEquipped("woodShield") then
		return(.05)

	elseif M.isItemEquipped("steelShield") then
		return(.15)

	elseif M.isItemEquipped("magicShield") then
		if(energy == 0) then
			return(0)
		else
			useEnergy(5)
			return(.60)
		end
	else
		return(0)
	end
end

local function getDamage(damage)
	local defencePercent = getArmourProperties(equipped)

	defencePercent = defencePercent + getShieldProperties(equipped)

	if defencePercent == 0 then
		defencePercent = 1
	elseif defencePercent >= 1 then
		defencePercent = 0
	end

	damage = damage * defencePercent

	return(damage)
end

--------------------------------------------------------

function M.getElementAttack()
	
	
end

function M.getMainAttack() --Deals with physical attack damagr, not anything that uses energy
		--item = { attack = equipped[equippedMelee.main].attack, type = equipped[equippedMelee.main].type}
		--return(item)
		if equipped[equippedMelee.main] ~= nil then
			print("main attack" .. tostring(equipped[equippedMelee.main].attack))
			return(equipped[equippedMelee.main].attack)
		else
			print("main attack is nil")
			return(0)
		end
end

function M.getSideAttack(combo)
	if equipped[equippedMelee.side] ~= nil then
		if combo == equipped[equippedMelee.side].combo then 
			--item = { attack = equipped[equippedMelee.main].attack, type = equipped[equippedMelee.main].type}
			--return(item)
			return(equipped[equippedMelee.side].attack)
		end
	else
		return(0)
	end
end

function M.resetCombo(combo)
	if equipped[equippedMelee.side] ~= nil then
		if combo == equipped[equippedMelee.side].combo then
			return(0)
		else
			return(combo)
		end
	else
		return(0)
	end
end

--------------------------------------------------------

function M.isItemEquipped(itemName)
	if equipped and itemName then
		if equipped[itemName].type ~= nil then
			if equipped[itemName].type == "main" then
				equippedMelee.main = itemName
			elseif equipped[itemName].type == "side" then
				equippedMelee.side = itemName
			end
		end
		
		return equipped[itemName] ~= nil
	end
	return false
end

function M.getHealth()
	return(health)
end

function M.shieldUp()
	shieldUp = not shieldUp
end

function M.recoverEnergy(recoveryAmt)
	energy = energy + recoveryAmt
end

function M.getEnergy()
	return(energy)
end

function M.equip(item) -- item = {name} if weapon item = {name, attack, combo, type}
	equipped[item.name] = item
	print("equipped test 1: " .. item.name)
	print("equipped test 2: " .. equipped[item.name].name)


	if equipped[item.name].type ~= nil then
		if equipped[item.name].type == "main" then
			equippedMelee.main = item.name
		elseif equipped[item.name].type == "side" then
			equippedMelee.side = item.name
		end
	end
end

function M.unequip(item)
	equipped[item.name] = nil
	print("unequipped: " .. item.name)
end


function M.setHealth(heal)
	health = heal
end

function M.setEnergy(en)
	energy = en
end

function M.setCombatHealth(damage)
	damage = getDamage(damage)
	health = health - damage
	print(damage)
	print(health)
	if health < MINHEALTH then
		print("dead")
		msg.post("main:/menu#Death", "enable")
	end
end

return(M)


