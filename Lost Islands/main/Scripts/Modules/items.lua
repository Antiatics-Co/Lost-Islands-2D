-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

local itemList = {  --NODES NEED TO BE REDONE
	WOODSWORD = { itemNum = 1, hasItem = false, equipped =  false, node = gui.get_node("WOODSWORD") },
	BROADSWORD = { itemNum = 2,  hasItem = false, equipped = false, gui.get_node("WOODSWORD") },
	SPEAR = { itemNum = 3, hasItem = false, equipped = false, gui.get_node("WOODSWORD") },
	BOW = { itemNum = 4, hasItem = false, equipped = false, gui.get_node("WOODSWORD") },
	MUSKET = { itemNum = 5, hasItem = false, equipped = false, gui.get_node("WOODSWORD") },
	SCYTHE = { itemNum = 6, hasItem = false, equipped = false, gui.get_node("MUSKET") },
	SAI = { itemNum = 7, hasItem = false, equipped = false, gui.get_node("SCYTHE") },
	BATON = { itemNum = 8, hasItem = false, equipped = false, gui.get_node("SAI") },
	ASSAULTRIFLE = { itemNum = 9, hasItem = false, equipped = false, gui.get_node("ASSAULTRIFLE") },
	ROCKETLAUNCHER = { itemNum = 10, hasItem = false, equipped = false, gui.get_node("ROCKETLAUNCHER") },
	CROSSBOW = { itemNum = 11, hasItem = false, equipped = false, gui.get_node("CROSSBOW") },
	BLUNDERBUSS = { itemNum = 12, hasItem = false, equipped = false, gui.get_node("BLUNDERBUSS") },
	GRENADE = { itemNum = 13, hasItem = false, equipped = false, gui.get_node("GRENADE") },
	BIGHAMMER = { itemNum = 14, hasItem = false, equipped = false, gui.get_node("BIGHAMMER") },
	KNIFE = { itemNum = 15, hasItem = false, equipped = false, gui.get_node("KNIFE") },
	ROCK = { itemNum = 16, hasItem = false, equipped = false, gui.get_node("ROCK") },


--shields

-- Item Slot, damage, energy usage

	WOOD = { itemNum = 17, hasItem = false, equipped = false, gui.get_node("WOOD") },
	STEEL = { itemNum = 18, hasItem = false, equipped = false, gui.get_node("STEEL") },
	MAGICSHIELD = { itemNum = 19, hasItem = false, equipped = false, gui.get_node("MAGICSHIELD") },

--Armour

	LIGHT = { itemNum = 20, hasItem = false, equipped = false, gui.get_node("LIGHT") },
	HEAVY = { itemNum = 21, hasItem = false, equipped = false, gui.get_node("HEAVY") },
	MAGIC = { itemNum = 22, hasItem = false, equipped = false, gui.get_node("MAGIC") },

--Elements

	FIRE = { itemNum = 23, hasItem = false, equipped = false, gui.get_node("FIRE") },
	WATER = { itemNum = 24, hasItem = false, equipped = false, gui.get_node("WATER") },
	STONE = { itemNum = 25, hasItem = false, equipped = false, gui.get_node("STONE") },
	LIGHTNING = { itemNum = 26, hasItem = false, equipped = false, gui.get_node("LIGHTNING") },
	ICE = { itemNum = 27, hasItem = false, equipped = false, gui.get_node("ICE") },
	RAINBOW = { itemNum = 28, hasItem = false, equipped = false, gui.get_node("RAINBOW") },
	POISON = { itemNum = 29, hasItem = false, equipped = false, gui.get_node("POISON") },

--Quest Items - first num is item num, 2nd is total num of items possible, going to set to 10 for now

	FIREDUNGEONKEYS = { itemNum = 30, max = 10, hasItem = false, holding = 0, gui.get_node("vFIREDUNGEONKEYS") }, --Player can only have one type of key at a time, any leftover keys are applied once the player reenters the dungeon
	WATERDUNGEONKEYS = { itemNum = 31, max = 10, hasItem = false, holding = 0, gui.get_node("WATERDUNGEONKEYS") },
	STONEDUNGEONKEYS = { itemNum = 32, max = 10, hasItem = false, holding = 0, gui.get_node("STONEDUNGEONKEYS") },

--Money and Arrows --have a special section in inventory, may be in hud, same with keys

	ARROW = { itemNum = 33, max = 40, hasItem = false, holding = 0, gui.get_node("ARROW") },
	SHELLS = { itemNum = 34, max = 5, hasItem = false, holding = 0, gui.get_node("SHELLS") },
	MUSKETBALLS = {itemNum = 35, max = 30, hasItem = false, holding = 0, gui.get_node("MUSKETBALLS") },
	PENDAL = { itemNum = 36, max = 99999, hasItem = false, holding = 99999, gui.get_node("PENDAL") }
}

return(itemList)