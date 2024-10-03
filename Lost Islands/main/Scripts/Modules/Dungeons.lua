--[[

@Author Aidan Cox

@Description
	Contains the properties of each dungeon/temple
	handles functions for saving and loading

@Version 1

--]]

local M = {}

local dungeons =
{
sunkenCity = {},


fireTemple = {},


quarry = {},


sewage = {},


frozenLake = {},
}

function M.getDungeonCompletion(name)
	return(dungeons[name])
end

function M.setDungeonCompletion(dungeon)
	dungeons[dungeon.name] = dungeon
end

return(M)