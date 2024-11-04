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

local screen_width
local screen_length

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

function M.remap(min1, max1, min2, max2, value)
	return min2 + (value - min1) * (max2 - min2) / (max1 - min1)
end

function M.screen_to_world(v) 
	local res = M.screen_res -- Screen resolution in pixels

	local aspect_ratio = M.screen_res.x / M.screen_res.y

	M.camera_rect = {
		x = -aspect_ratio, y = -1,
		w = 2 * aspect_ratio, h = 2
	}
	
	local cam_rect = M.camera_rect -- Rectangle camera covers in world space 
	local world_x = M.remap( 0, res.x, cam_rect.x, cam_rect.x+cam_rect.w, v.x ) 
	local world_y = M.remap( 0, res.y, cam_rect.y, cam_rect.y+cam_rect.h, v.y ) 
	return vmath.vector3( world_x, world_y, v.z ) 
end

return(M)