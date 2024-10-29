--@Title Enemy Properties
--@Author Aidan Cox
--@_VERSION = 1
--@Description
--	This script handles gettng and setting enemy health
-- It also contains a list of enemies with all their properties


local itm = require("main.Scripts.Modules.ItemProperties")
local collection = require("main.Scripts.Modules.CollectionTracker")

local M = {}

M.npc = {
	tutorialTown = { --use collecion url as name
			Mayor = { activity = 0 }, --activity is whatever phase of speaking they have with the player, like if a they complete a quest
			Mother = { activity = 0 }
		}
	
}
	
local enemies = {
	MainMap = {
		slime = { totalHealth = 35, attack = 5}			
	}
}

-- Helper function to extract the last part of the URL
local function get_collection_key(url)
	local parts = {}
	for part in string.gmatch(url, "[^/]+") do
		table.insert(parts, part)
	end
	return parts[#parts]
end

-- Updated calcEnemyHealth and AttackPlayer functions
function M.calcEnemyHealth(enemy, combo)
	local damage = itm.getMainAttack() + itm.getSideAttack(combo)
	local current_collection = get_collection_key(tostring(collection.collections))
	if enemies[current_collection] and enemies[current_collection][enemy] then
		return (enemies[current_collection][enemy].totalHealth - damage)
	else
		print("Error: Enemy not found in current collection")
		return nil
	end
end

function M.AttackPlayer(enemy)
	local current_collection = get_collection_key(tostring(collection.collections))
	if enemies[current_collection] and enemies[current_collection][enemy] then
		itm.setCombatHealth(enemies[current_collection][enemy].damage)
	else
		print("Error: Enemy not found in current collection")
	end
end

return(M)