--[[

@Author Aidan Cox

@Description
	Contains the properties of each dungeon/temple
	handles functions for saving and loading

@Version 1

--]]

local M = {}

M.dungeons = --contains the total number of each dungeon items
{
	sunkenCity = {
		chests = { 
			one = false,
			two = false,
			three = false,
			four = false,
			five = false,
			six = false,
			seven = false,
			eight = false,
			nine = false,
			ten = false
		},

		bossBeaten = false,

		doors = {
			one = false,
			two = false,
			three = false
		}


		

	},


	fireTemple = {
		chests = { 
			one = false,
			two = false,
			three = false,
			four = false,
			five = false,
			six = false,
			seven = false,
			eight = false,
			nine = false,
			ten = false
		},

		bossBeaten = false,

		doors = {
			one = false,
			two = false,
			three = false
		}
		


	},


	quarry = {
		chests = { 
			chests = { 
				one = false,
				two = false,
				three = false,
				four = false,
				five = false,
				six = false,
				seven = false,
				eight = false,
				nine = false,
				ten = false
			},

			bossBeaten = false,

			doors = {
				one = false,
				two = false,
				three = false
			}


			
		
		},
	},

	sewage = {
		chests = { 
			one = false,
			two = false,
			three = false,
			four = false,
			five = false,
			six = false,
			seven = false,
			eight = false,
			nine = false,
			ten = false
		},

		bossBeaten = false,

		doors = {
			one = false,
			two = false,
			three = false		
		
		}
	},


	frozenLandscape = {
		chests = { 
			one = false,
			two = false,
			three = false,
			four = false,
			five = false,
			six = false,
			seven = false,
			eight = false,
			nine = false,
			ten = false
		},

		bossBeaten = false,

		doors = {
			one = false,
			two = false,
			three = false
		}


		
		
		}
	}

return(M)