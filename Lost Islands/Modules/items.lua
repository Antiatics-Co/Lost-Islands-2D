local M = {}

M.itemList = M.itemList or {  --attacks and speeds and combosnee to be redone
	woodsword = { itemNum = 1, hasItem = true, equipped = false, node = "WOODSWORD", type = "main", attack = 10, speed = 0 },
	broadsword = { itemNum = 2,  hasItem = false, equipped = false, node = "BROADSWORD", type = "main", attack = 10, speed = 0   },
	spear = { itemNum = 3, hasItem = false, equipped = false, node = "SPEAR", type = "main", attack = 10, speed = 0   },
	bow = { itemNum = 4, hasItem = false, equipped = false, node = "BOW", type = "range", attack = 10, speed = 0   },
	musket = { itemNum = 5, hasItem = false, equipped = false, node = "MUSKET", type = "range", attack = 10, speed = 0   },
	scythe = { itemNum = 6, hasItem = false, equipped = false, node = "SCYTHE", type = "main", attack = 10, speed = 0   },
	sai = { itemNum = 7, hasItem = false, equipped = false, node = "SAI", type = "main", attack = 10, speed = 0   },
	baton = { itemNum = 8, hasItem = false, equipped = false, node = "BATON", type = "main" , attack = 10, speed = 0  },
	assault = { itemNum = 9, hasItem = false, equipped = false, node = ("ASSAULTRIFLE"), type = "side", combo = 10, attack = 10, speed = 0     }, --has combo
	rocket = { itemNum = 10, hasItem = false, equipped = false, node = ("ROCKETLAUNCHER"), type = "side", combo = 10, attack = 10, speed = 0     }, --has combo
	crossbow = { itemNum = 11, hasItem = false, equipped = false, node = ("CROSSBOW"), type = "range", attack = 10, speed = 0   },
	blunderbuss = { itemNum = 12, hasItem = false, equipped = false, node = ("BLUNDERBUSS"), type = "side", combo = 10, attack = 10, speed = 0     }, --has combo
	grenade = { itemNum = 13, hasItem = false, equipped = false, node = ("GRENADE"), type = "range", attack = 10, speed = 0   },
	hammer = { itemNum = 14, hasItem = false, equipped = false, node = ("BIGHAMMER"), type = "main", attack = 10, speed = 0   },
	knife = { itemNum = 15, hasItem = false, equipped = false, node = ("KNIFE"), type = "side", combo = 10, attack = 10, speed = 0   }, --has combo
	rock = { itemNum = 16, hasItem = false, equipped = false, node = ("ROCK"), type = "main", attack = 10, speed = 0   },

--shields

-- Item Slot, damage, energy usage

	woodShield = { itemNum = 17, hasItem = false, equipped = false, node = ("WOOD") },
	steelShield = { itemNum = 18, hasItem = false, equipped = false, node = ("STEEL") },
	magicShield = { itemNum = 19, hasItem = false, equipped = false, node = ("MAGICSHIELD") },

--Armour

	lightArmour = { itemNum = 20, hasItem = false, equipped = false, node = ("LIGHT") },
	heavyArmour = { itemNum = 21, hasItem = false, equipped = false, node = ("HEAVY") },
	magicArmour = { itemNum = 22, hasItem = false, equipped = false, node = ("MAGIC") },

--Elements

	fireElement = { itemNum = 23, hasItem = false, equipped = false, node = ("FIRE") },
	waterElement = { itemNum = 24, hasItem = false, equipped = false, node = ("WATER") },
	stoneElement = { itemNum = 25, hasItem = false, equipped = false, node = ("STONE") },
	lightning = { itemNum = 26, hasItem = false, equipped = false, node = ("LIGHTNING") },
	ice = { itemNum = 27, hasItem = false, equipped = false, node = ("ICE") },
	rainbow = { itemNum = 28, hasItem = false, equipped = false, node = ("RAINBOW") },
	posion = { itemNum = 29, hasItem = false, equipped = false, node = ("POISON") },

--Quest Items - first num is item num, 2nd is total num of items possible, going to set to 10 for now

	fireDungeonKeys = { itemNum = 30, max = 10, holding = 0, node = ("FIREDUNGEONKEYS") }, --Player can only have one type of key at a time, any leftover keys are applied once the player reenters the dungeon
	waterDungeonKeys = { itemNum = 31, max = 10, holding = 0, node = ("WATERDUNGEONKEYS") },
	stoneDungeonKeys = { itemNum = 32, max = 10, holding = 0, node = ("STONEDUNGEONKEYS") },

--Money and Arrows --have a special section in inventory, may be in hud, same with keys

	arrow = { itemNum = 33, max = 40, holding = 0, node = ("ARROW") },
	shells = { itemNum = 34, max = 5, holding = 0, node = ("SHELLS") },
	musketBalls = {itemNum = 35, max = 30, holding = 0, node = ("MUSKETBALLS") },
	pendal = { itemNum = 36, max = 99999, holding = 0, node = ("PENDAL") },
}

function M.get_itemList()
	print("Get Item List" .. tostring(M.itemList))
	return(M.itemList)
end


function M.buy(item, cost, amt) --add not M.itemList[item].hasItem in any ifs where this is implemented, 
	--for consumables it should ompare current to max
	-- i guess this is gonna be called by the store gui scripts when a button is pressed
	if M.itemList["pendal"].holding >= cost then
		if M.itemList[item].max ~= nil then
			if M.itemList[item].max > (M.itemList[item].holding + amt) then
				M.itemList["pendal"].holding = M.itemList["pendal"].holding - cost
				M.itemList[item].holding =  M.itemList[item].holding + amt
			else
				--show max capacity for that item message
			end
		elseif not M.itemList[item].hasItem then
			M.itemList["pendal"].holding = M.itemList["pendal"].holding - cost
			M.itemList[item].hasItem = true
		else
			--Already have item message
		end
	else
		--show not enough pendal message msg.post(receiver, message_id)
	end
end

---------------------------------------------------------------------------------

local MAXENERGY = 100
local MINENERGY = 0
local MAXHEALTH = 100
local MINHEALTH = 1

M.health = MAXHEALTH 
local equipped = {}
local shieldUp = false
M.energy = MAXENERGY

local equippedMelee = { main = nil, side = nil }

---------------------------------------------------------------------------------

function M.set_itemList(name)
	if M.itemList[name]["equipped"] ~= nil then
		M.itemList[name]["equipped"] = true
	end
end

---------------------------------------------------------------------------------
function M.setEnergy(en)
	M.energy = en
	msg.post("map:/HUD#hud", "energy")
end

function M.setHealth(hp)
	M.health = hp
	msg.post("map:/HUD#hud", "health")
end

--use use energy and setCombatHealth for any alterations to energy or health after initial loading

local function useEnergy(usage)
	M.energy = M.energy - usage

	if M.energy < MINENERGY then
		M.energy = 0
	end
	M.setEnergy(M.energy)
end

--the get properties function will be called from setup
local function getArmourProperties(items) --ID =  num 
	if M.isItemEquipped("lightArmour") then
		return(.10)

	elseif M.isItemEquipped("heavyArmour") then
		return(.30)

	elseif M.isItemEquipped("magicArmour") then
		if(M.energy == 0) then
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
		if(M.energy == 0) then
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

function M.shieldUp()
	shieldUp = not shieldUp
end

function M.recoverEnergy(recoveryAmt)
	M.energy = M.energy + recoveryAmt
end

function M.equip(item) -- item = {name} if weapon item = {name, attack, combo, type}
	equipped[item.name] = item
	print("equipped test 1: " .. item.name)
	print("equipped test 2: " .. equipped[item.name].name)

	M.set_itemList(item.name)

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

function M.setCombatHealth(damage)
	damage = getDamage(damage)
	M.health = M.health - damage
	print(damage)
	print(M.health)
	if M.health < MINHEALTH then
		print("dead")
		msg.post("main:/menu#Death", "enable")
	else
		M.setHealth(M.health)
	end
end

return(M)

