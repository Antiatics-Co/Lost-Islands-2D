--[[

@Author Aidan Cox

@Description
	contains the current general location of the player
	as well as the starting postions for dungeons

@Version 1

--]]

local M = {}

local position
local mousePos

local window_height
local window_width

function M.getPosition()
	return(position)
end

function M.setPosition(pos) 
	--hasnext func setting all locations to false
	position = pos
	
end

function M.setMousePosition(pos)
	mousePos = pos
end

function M.getMousePosition()
	return(mousePos)
end

function M.setWindowWidth(width)
	window_width = width
end

function M.setWindowHeight(height)
	window_height = height
end

function M.screen_to_world(sx, sy, sz, projection, view)
	local inv = vmath.inv(projection * view)
	sx = (2 * sx / window_width) - 1
	sy = (2 * sy / window_height) - 1
	sz = (2 * sz) - 1
	
	local wx = sx * inv.m00 + sy * inv.m01 + sz * inv.m02 + inv.m03
	local wy = sx * inv.m10 + sy * inv.m11 + sz * inv.m12 + inv.m13
	local wz = sx * inv.m20 + sy * inv.m21 + sz * inv.m22 + inv.m23
	return vmath.vector3(wx, wy, wz)
end

return(M)