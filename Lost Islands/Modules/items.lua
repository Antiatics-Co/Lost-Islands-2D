-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

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

	fireDungeonKeys = { itemNum = 30, max = 10, hasItem = false, holding = 0, node = ("FIREDUNGEONKEYS") }, --Player can only have one type of key at a time, any leftover keys are applied once the player reenters the dungeon
	waterDungeonKeys = { itemNum = 31, max = 10, hasItem = false, holding = 0, node = ("WATERDUNGEONKEYS") },
	stoneDungeonKeys = { itemNum = 32, max = 10, hasItem = false, holding = 0, node = ("STONEDUNGEONKEYS") },

--Money and Arrows --have a special section in inventory, may be in hud, same with keys

	arrow = { itemNum = 33, max = 40, hasItem = false, holding = 0, node = ("ARROW") },
	shells = { itemNum = 34, max = 5, hasItem = false, holding = 0, node = ("SHELLS") },
	musketBalls = {itemNum = 35, max = 30, hasItem = false, holding = 0, node = ("MUSKETBALLS") },
	pendal = { itemNum = 36, max = 99999, hasItem = false, holding = 0, node = ("PENDAL") }
}

function M.set_itemList(item)
	M.itemList = M.itemList
	print("Set Item List Function")
	M.itemList = item
end

function M.get_itemList()
	print("Get Item List" .. tostring(M.itemList))
	return(M.itemList)
end


return(M)

