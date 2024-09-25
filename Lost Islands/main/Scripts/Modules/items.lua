-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

-------------------------------------------------------------

--Physical

WOODSWORD = { itemNum = 1, hasItem = false, equipped =  false }
BROADSWORD = { itemNum = 2,  hasItem = false, equipped = false }
SPEAR = { itemNum = 3, hasItem = false, equipped = false }
BOW = { itemNum = 4, hasItem = false, equipped = false }
MUSKET = { itemNum = 5, hasItem = false, equipped = false }
SCYTHE = { itemNum = 6, hasItem = false, equipped = false }
SAI = { itemNum = 7, hasItem = false, equipped = false }
BATON = { itemNum = 8, hasItem = false, equipped = false }
ASSAULTRIFLE = { itemNum = 9, hasItem = false, equipped = false }
ROCKETLAUNCHER = { itemNum = 10, hasItem = false, equipped = false }
CROSSBOW = { itemNum = 11, hasItem = false, equipped = false }
BLUNDERBUSS = { itemNum = 12, hasItem = false, equipped = false }
GRENADE = { itemNum = 13, hasItem = false, equipped = false }
BIGHAMMER = { itemNum = 14, hasItem = false, equipped = false }
KNIFE = { itemNum = 15, hasItem = false, equipped = false }
ROCK = { itemNum = 16, hasItem = false, equipped = false }


--shields

-- Item Slot, damage, energy usage

WOOD = { itemNum = 17, hasItem = false, equipped = false }
STEEL = { itemNum = 18, hasItem = false, equipped = false }
MAGICSHIELD = { itemNum = 19, hasItem = false, equipped = false }

--Armour

LIGHT = { itemNum = 20, hasItem = false, equipped = false }
HEAVY = { itemNum = 21, hasItem = false, equipped = false }
MAGIC = { itemNum = 22, hasItem = false, equipped = false }

--Elements

FIRE = { itemNum = 23, hasItem = false, equipped = false }
WATER = { itemNum = 24, hasItem = false, equipped = false }
STONE = { itemNum = 25, hasItem = false, equipped = false }
LIGHTNING = { itemNum = 26, hasItem = false, equipped = false }
ICE = { itemNum = 27, hasItem = false, equipped = false }
RAINBOW = { itemNum = 28, hasItem = false, equipped = false }
POISON = { itemNum = 29, hasItem = false, equipped = false }

--Quest Items - first num is item num, 2nd is total num of items possible, going to set to 10 for now

FIREDUNGEONKEYS = { itemNum = 30, max = 10, hasItem = false, holding = 0 }--Player can only have one type of key at a time, any leftover keys are applied once the player reenters the dungeon
WATERDUNGEONKEYS = { itemNum = 31, max = 10, hasItem = false, holding = 0 }
STONEDUNGEONKEYS = { itemNum = 32, max = 10, hasItem = false, holding = 0 }

--Money and Arrows --have a special section in inventory, may be in hud, same with keys

ARROW = { itemNum = 33, max = 40, hasItem = false, holding = 0 }
SHELLS = { itemNum = 34, max = 5, hasItem = false, holding = 0 }
MUSKETBALLS = {itemNum = 35, max = 30, hasItem = false, holding = 0}
PENDAL = { itemNum = 36, max = 99999, hasItem = false, holding = 0 }



