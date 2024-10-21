--[[

@Author Aidan Cox

@Description
	contains the current general location of the player
	as well as the starting postions for dungeons

@Version 1

--]]

local M = {}

local position
function M.getPosition()
	
	return(position)
end

function M.setPosition(pos) 
	--hasnext func setting all locations to false
	position = pos
	
end

return(M)