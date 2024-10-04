--[[

@Author Aidan Cox

@Description
	Contains the properties of each dungeon/temple
	handles functions for saving and loading

@Version 1

--]]

local M = {}

local dungeons = --contains the total number of each dungeon items
{
	sunkenCity = {
		chests = { 
			one = true,
			two = true,
			three = true,
			four = true,
			five = true,
			six = true,
			seven = true,
			eight = true,
			nine = true,
			ten = true
		}
		


	},


	fireTemple = {
		chests = { 
			one = true,
			two = true,
			three = true,
			four = true,
			five = true,
			six = true,
			seven = true,
			eight = true,
			nine = true,
			ten = true
		}
		


	},


	quarry = {
		chests = { 
			one = true,
			two = true,
			three = true,
			four = true,
			five = true,
			six = true,
			seven = true,
			eight = true,
			nine = true,
			ten = true
		}
		

		
	},


	sewage = {
		chests = { 
			one = true,
			two = true,
			three = true,
			four = true,
			five = true,
			six = true,
			seven = true,
			eight = true,
			nine = true,
			ten = true
		}
		
		
	},


	frozenLandscape = {
		chests = { 
			one = true,
			two = true,
			three = true,
			four = true,
			five = true,
			six = true,
			seven = true,
			eight = true,
			nine = true,
			ten = true
		}

		
	}
}

function M.getDungeonCompletion(name)
	return(dungeons[name])
end

function M.setDungeonCompletion(dungeon)
	dungeons = dungeon
end

return(M)