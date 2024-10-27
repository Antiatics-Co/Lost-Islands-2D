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
				Mayor = { activity }, --activity is whatever phase of speaking they have with the player, like if a they complete a quest
				Mother = {}
		}

		
}

local function calcDamage(enemy, combo)
	local damage = 0.0
	damage = itm.getMainAttack()
	damage = damage + itm.getSideAttack(combo)
	
	TutorialEnemies[enemy].health = TutorialEnemies[enemy].health - damage
end

local function getDialog(person)
	
end



return(M)