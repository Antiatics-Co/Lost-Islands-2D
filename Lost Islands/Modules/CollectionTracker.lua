--@Author Aidan Cox
--@description -  prepares for location saving, keeps track of current locations, and visited locations
-- sets the grids as necessary

-- collection_tracker.lua

local M = {}

local getter
local location

M.visited_locations = {}

function M.set_location(loc)
	location = loc
	M.add_visited_location(loc)
end

function M.get_location()
	return(location)
end

function M.setGrids()
	getter = 
	{
		Level = {
			cellsize = 16, grid = {}

		},

		MainMap = {
			cellsize = 16, grid = {
				{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
				{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
			}
		}

	}
	return(getter[location])
end

-- Function to add the set location to visited_locations if it's not already in the table
function M.add_visited_location(loc)
	for _, visited in ipairs(M.visited_locations) do
		if visited == loc then
			return
		end
	end
	table.insert(M.visited_locations, loc)
	print("Location added to visited_locations:", loc)
end

return M
