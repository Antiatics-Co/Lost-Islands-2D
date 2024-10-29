--@Title Enemy Properties
--@Author Aidan Cox
--@_VERSION = 1
--@Description
--	This script handles gettng and setting enemy health
-- It also contains a list of enemies with all their properties


local itm = require("main.Scripts.Modules.ItemProperties")

local M = {}

local npc = {
		tutorialTown = { --use collecion url as name
				Mayor = { activity = 0 }, --activity is whatever phase of speaking they have with the player, like if a they complete a quest
				Mother = { activity = 0 }
		}

		
	}

	local enemies = {
		tutorialTown = { --use collecion url as name
			slime = {health = 35, damage = 5}
	}


	}

local function calcDamage(enemy, combo, url)
	local damage = 0.0
	damage = itm.getMainAttack()
	damage = damage + itm.getSideAttack(combo)
	
	enemies[url][enemy].health = enemies[url][enemy].health - damage
end

function M.getAttackDamage(enemy, url)
	return(enemies[url][enemy].damage)
end



return(M)