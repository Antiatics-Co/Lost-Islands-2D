-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

local M = {}

local itemList = {  --attacks and speeds and combosnee to be redone
	WOODSWORD = { itemNum = 1, hasItem = true, equipped = false, node = "WOODSWORD", type = "main", attack = 10, speed = 0 },
	BROADSWORD = { itemNum = 2,  hasItem = false, equipped = false, node = "BROADSWORD", type = "main", attack = 10, speed = 0   },
	SPEAR = { itemNum = 3, hasItem = false, equipped = false, node = "SPEAR", type = "main", attack = 10, speed = 0   },
	BOW = { itemNum = 4, hasItem = false, equipped = false, node = "BOW", type = "range", attack = 10, speed = 0   },
	MUSKET = { itemNum = 5, hasItem = false, equipped = false, node = "MUSKET", type = "range", attack = 10, speed = 0   },
	SCYTHE = { itemNum = 6, hasItem = false, equipped = false, node = "SCYTHE", type = "main", attack = 10, speed = 0   },
	SAI = { itemNum = 7, hasItem = false, equipped = false, node = "SAI", type = "main", attack = 10, speed = 0   },
	BATON = { itemNum = 8, hasItem = false, equipped = false, node = "BATON", type = "main" , attack = 10, speed = 0  },
	ASSAULTRIFLE = { itemNum = 9, hasItem = false, equipped = false, node = ("ASSAULTRIFLE"), type = "side", combo = 10, attack = 10, speed = 0     }, --has combo
	ROCKETLAUNCHER = { itemNum = 10, hasItem = false, equipped = false, node = ("ROCKETLAUNCHER"), type = "side", combo = 10, attack = 10, speed = 0     }, --has combo
	CROSSBOW = { itemNum = 11, hasItem = false, equipped = false, node = ("CROSSBOW"), type = "range", attack = 10, speed = 0   },
	BLUNDERBUSS = { itemNum = 12, hasItem = false, equipped = false, node = ("BLUNDERBUSS"), type = "side", combo = 10, attack = 10, speed = 0     }, --has combo
	GRENADE = { itemNum = 13, hasItem = false, equipped = false, node = ("GRENADE"), type = "range", attack = 10, speed = 0   },
	BIGHAMMER = { itemNum = 14, hasItem = false, equipped = false, node = ("BIGHAMMER"), type = "main", attack = 10, speed = 0   },
	KNIFE = { itemNum = 15, hasItem = false, equipped = false, node = ("KNIFE"), type = "side", combo = 10, attack = 10, speed = 0   }, --has combo
	ROCK = { itemNum = 16, hasItem = false, equipped = false, node = ("ROCK"), type = "main", attack = 10, speed = 0   },


--shields

-- Item Slot, damage, energy usage

	WOOD = { itemNum = 17, hasItem = false, equipped = false, node = ("WOOD") },
	STEEL = { itemNum = 18, hasItem = false, equipped = false, node = ("STEEL") },
	MAGICSHIELD = { itemNum = 19, hasItem = false, equipped = false, node = ("MAGICSHIELD") },

--Armour

	LIGHT = { itemNum = 20, hasItem = false, equipped = false, node = ("LIGHT") },
	HEAVY = { itemNum = 21, hasItem = false, equipped = false, node = ("HEAVY") },
	MAGIC = { itemNum = 22, hasItem = false, equipped = false, node = ("MAGIC") },

--Elements

	FIRE = { itemNum = 23, hasItem = false, equipped = false, node = ("FIRE") },
	WATER = { itemNum = 24, hasItem = false, equipped = false, node = ("WATER") },
	STONE = { itemNum = 25, hasItem = false, equipped = false, node = ("STONE") },
	LIGHTNING = { itemNum = 26, hasItem = false, equipped = false, node = ("LIGHTNING") },
	ICE = { itemNum = 27, hasItem = false, equipped = false, node = ("ICE") },
	RAINBOW = { itemNum = 28, hasItem = false, equipped = false, node = ("RAINBOW") },
	POISON = { itemNum = 29, hasItem = false, equipped = false, node = ("POISON") },

--Quest Items - first num is item num, 2nd is total num of items possible, going to set to 10 for now

	FIREDUNGEONKEYS = { itemNum = 30, max = 10, hasItem = false, holding = 0, node = ("FIREDUNGEONKEYS") }, --Player can only have one type of key at a time, any leftover keys are applied once the player reenters the dungeon
	WATERDUNGEONKEYS = { itemNum = 31, max = 10, hasItem = false, holding = 0, node = ("WATERDUNGEONKEYS") },
	STONEDUNGEONKEYS = { itemNum = 32, max = 10, hasItem = false, holding = 0, node = ("STONEDUNGEONKEYS") },

--Money and Arrows --have a special section in inventory, may be in hud, same with keys

	ARROW = { itemNum = 33, max = 40, hasItem = false, holding = 0, node = ("ARROW") },
	SHELLS = { itemNum = 34, max = 5, hasItem = false, holding = 0, node = ("SHELLS") },
	MUSKETBALLS = {itemNum = 35, max = 30, hasItem = false, holding = 0, node = ("MUSKETBALLS") },
	PENDAL = { itemNum = 36, max = 99999, hasItem = false, holding = 99999, node = ("PENDAL") }
}

function M.set_itemList(item)
	itemList = item
end

function M.get_itemList()
	return(itemList)
end

return(M)

