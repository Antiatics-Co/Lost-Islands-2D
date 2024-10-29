--@Title Enemy Properties
--@Author Aidan Cox
--@_VERSION = 1
--@Description
--	This script handles gettng and setting enemy health
-- It also contains a list of enemies with all their properties


local itm = require("main.Scripts.Modules.ItemProperties")
local collection = require("main.Scripts.Modules.CollectionTracker")

local M = {}

local npc = {
		tutorialTown = { --use collecion url as name
				Mayor = { activity = 0 }, --activity is whatever phase of speaking they have with the player, like if a they complete a quest
				Mother = { activity = 0 }
		}

		
	}

	local enemies = {
		mainmap = { --use collecion url as name
			slime = { totalHealth = 35, attack = 5}
			
	}


	}

function M.calcEnemyHealth(enemy, combo)
	local damage = 0
	damage = itm.getMainAttack()
	damage = damage + itm.getSideAttack(combo)
	
	return(enemies[tostring(collection.collections)][enemy].totalHealth - damage)
end

function M.AttackPlayer(enemy)
	itm.setCombatHealth(enemies[tostring(collection.collections)][enemy].damage)
end

return(M)