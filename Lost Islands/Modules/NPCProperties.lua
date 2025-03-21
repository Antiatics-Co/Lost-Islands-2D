--@Title Enemy Properties
--@Author Aidan Cox
--@_VERSION = 1
--@Description
--	This script handles gettng and setting enemy health
-- It also contains a list of enemies with all their properties


local itm = ("Modules.items")
local collection = require("Modules.Settings")
local health = nil
local M = {}

M.npc = {
	tutorialTown = { --use collecion url as name
			Mayor = { activity = 0 }, --activity is whatever phase of speaking they have with the player, like if a they complete a quest
			Mother = { activity = 0 }
		}
	
}
	
M.enemies = {
	Level = {
		slime = { totalHealth = 35, attack = 5, 
				viewDist = 100, speed = 500, attackDist = 0, 
				avoidHoles = true, canMoveVertically = false, enraged = false
			}			
		},
			
	MainMap = {
		slime = { totalHealth = 35, attack = 5, 
		viewDist = 100, speed = 500, attackDist = 0, 
		avoidHoles = false, canMoveVertically = true, enraged = false
		}
	}
}

-- Helper function to extract the last part of the URL and clean it
local function get_collection_key(url)
	local parts = {}
	for part in string.gmatch(url, "[^:/#]+") do
		table.insert(parts, part)
	end
	local key = parts[#parts]
	if key:sub(-1) == "]" then
		key = key:sub(1, -2)
	end
	return key == "main" and parts[#parts - 1] or key
end


-- Updated calcEnemyHealth function
function M.calcEnemyHealth(enemy, combo)
	local damage = itm.getMainAttack() + itm.getSideAttack(combo)
	print("dmage:" .. tostring(damage))
	local current_collection_url = collection.get_loaded_collection()
	if not current_collection_url then
		print("Error: No collection is currently loaded")
		return nil
	end

	print("Collection: " .. current_collection_url)

	local current_collection = get_collection_key(current_collection_url)

	print("Collection returned: " .. tostring(current_collection))
	print(tostring(M.enemies[current_collection]))
	print(tostring(M.enemies[current_collection] and M.enemies[current_collection][enemy]))

	
	if health == nil then
		health = M.enemies[current_collection][enemy].totalHealth 
	end
	
	health = health - damage
	print("current health" .. health)
	if M.enemies[current_collection] and M.enemies[current_collection][enemy] then
		return (health)
	else
		print("Error: Enemy not found in current collection")
		return nil
	end
end

function M.AttackPlayer(enemy)
	local current_collection = get_collection_key(tostring(collection.collections))
	if M.enemies[current_collection] and M.enemies[current_collection][enemy] then
		itm.setCombatHealth(M.enemies[current_collection][enemy].damage)
	else
		print("Error: Enemy not found in current collection")
	end
end

function M.resetCombo(combo)
	return(itm.resetCombo(combo))
end

return(M)