--[[

@Author Aidan Cox

@Description
	contains the current general location of the player
	as well as the starting postions for dungeons

@Version 1

--]]


local M = {}


local locations = 
{
	stoneDungeon = false



}


function M.getLocation(location)
	print("locations:" .. locations.name)
	return(locations[location])
end

function M.setLocation(location) 
	--hasnext func setting all locations to false
	locations[location] = true
	
end



return(M)