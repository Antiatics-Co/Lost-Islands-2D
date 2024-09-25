-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

-------------------------------------------------------------

--Physical

local WOODSWORD = { itemNum = 1, hasItem = false, equipped =  false }
local BROADSWORD = { itemNum = 2,  hasItem = false, equipped = false }
local SPEAR = { itemNum = 3, hasItem = false, equipped = false }
local BOW = { itemNum = 4, hasItem = false, equipped = false }
local MUSKET = { itemNum = 5, hasItem = false, equipped = false }
local SCYTHE = { itemNum = 6, hasItem = false, equipped = false }
local SAI = { itemNum = 7, hasItem = false, equipped = false }
local BATON = { itemNum = 8, hasItem = false, equipped = false }
local ASSAULTRIFLE = { itemNum = 9, hasItem = false, equipped = false }
local ROCKETLAUNCHER = { itemNum = 10, hasItem = false, equipped = false }
local CROSSBOW = { itemNum = 11, hasItem = false, equipped = false }
local BLUNDERBUSS = { itemNum = 12, hasItem = false, equipped = false }
local GRENADE = { itemNum = 13, hasItem = false, equipped = false }
local BIGHAMMER = { itemNum = 14, hasItem = false, equipped = false }
local KNIFE = { itemNum = 15, hasItem = false, equipped = false }
local ROCK = { itemNum = 16, hasItem = false, equipped = false }


--shields

-- Item Slot, damage, energy usage

local WOOD = { itemNum = 17, hasItem = false, equipped = false }
local STEEL = { itemNum = 18, hasItem = false, equipped = false }
local MAGICSHIELD = { itemNum = 19, hasItem = false, equipped = false }

--Armour

local LIGHT = { itemNum = 20, hasItem = false, equipped = false }
local HEAVY = { itemNum = 21, hasItem = false, equipped = false }
local MAGIC = { itemNum = 22, hasItem = false, equipped = false }

--Elements

local FIRE = { itemNum = 23, hasItem = false, equipped = false }
local WATER = { itemNum = 24, hasItem = false, equipped = false }
local STONE = { itemNum = 25, hasItem = false, equipped = false }
local LIGHTNING = { itemNum = 26, hasItem = false, equipped = false }
local ICE = { itemNum = 27, hasItem = false, equipped = false }
local RAINBOW = { itemNum = 28, hasItem = false, equipped = false }
local POISON = { itemNum = 29, hasItem = false, equipped = false }

--Quest Items - first num is item num, 2nd is total num of items possible, going to set to 10 for now

local FIREDUNGEONKEYS = { itemNum = 30, max = 10, hasItem = false, holding = 0 }--Player can only have one type of key at a time, any leftover keys are applied once the player reenters the dungeon
local WATERDUNGEONKEYS = { itemNum = 31, max = 10, hasItem = false, holding = 0 }
local STONEDUNGEONKEYS = { itemNum = 32, max = 10, hasItem = false, holding = 0 }

--Money and Arrows --have a special section in inventory, may be in hud, same with keys

local ARROW = { itemNum = 33, max = 40, hasItem = false, holding = 0 }
local SHELLS = { itemNum = 34, max = 5, hasItem = false, holding = 0 }
local MUSKETBALLS = {itemNum = 35, max = 30, hasItem = false, holding = 0}
local PENDAL = { itemNum = 36, max = 99999, hasItem = false, holding = 0 }