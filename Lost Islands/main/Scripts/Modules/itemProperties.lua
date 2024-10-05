

local M = {}

local MAXENERGY = 100
local MINENERGY = 0
local MAXHEALTH = 100
local MINHEALTH = 1

local health = MAXHEALTH
local equipped = {}
local shieldUp = false
local energy = MAXENERGY


local function useEnergy(usage)
	energy = energy - usage

	if energy < MINENERGY then
		energy = 0
	end
end

local function getWeaponProperties(items) --ID =  num 
	--deals with sidearms, mainarms, and elements
end


--the get properties function will be called from setup
local function getArmourProperties(items) --ID =  num 

end

local function getShieldProperties(items) --ID = { name, type }
	if M.isItemEquipped("woodShield") then
		return(.10)

	elseif M.isItemEquipped("steelShield") then
		return(.30)

	elseif M.isItemEquipped("magicShield") then
		if(energy == 0) then
			return(0)
		else
			useEnergy(5)
			return(1)
		end
	else
		return(0)
	end
end

local function getDamage(damage)
	local defencePercent = 0
	--defencePercent = getArmourProperties(equipped)

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

function M.isItemEquipped(itemName)
	if equipped and itemName then
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

function M.equip(item) -- item = {name} 
	equipped[item.name] = item
	print("equipped test 1: " .. item.name)
	print("equipped test 2: " .. equipped[item.name].name)
end

function M.unequip(item)
	equipped[item.name] = nil
	print("unequipped: " .. item.name)
end


function M.setHealth(damage)
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


