local astar = {}

local cellSize = 10
local grid = {}

local function world_to_grid(world_x, world_y)
	local grid_x = math.floor(world_x / cellSize)
	local grid_y = math.floor(world_y / cellSize)
	return grid_x, grid_y
end

function astar.setCellSize(cell)
	cellSize = cell
end

function astar.setgrid(set_grid)
	grid = set_grid
end

local function heuristic(node, goal)
	return math.abs(node.x - goal.x) + math.abs(node.y - goal.y)
end

local function get_neighbors(node)
	local neighbors = {}
	local directions = {
		{x = 1, y = 0}, {x = -1, y = 0}, 
		{x = 0, y = 1}, {x = 0, y = -1}
	}
	for _, dir in ipairs(directions) do
		local neighbor_x = node.x + dir.x
		local neighbor_y = node.y + dir.y
		if grid[neighbor_y] and grid[neighbor_y][neighbor_x] and grid[neighbor_y][neighbor_x] == 0 then
			table.insert(neighbors, {x = neighbor_x, y = neighbor_y})
		end
	end
	return neighbors
end

function astar.solve(start, goal)

	start.x, start.y = world_to_grid(start.x, start.y)
	goal.x, goal.y = world_to_grid(goal.x, goal.y)
	local open_list = {}
	local closed_list = {}
	local came_from = {}

	local start_node = {x = start.x, y = start.y, g = 0, h = heuristic(start, goal), f = 0}
	start_node.f = start_node.g + start_node.h
	table.insert(open_list, start_node)

	while #open_list > 0 do
		local current = table.remove(open_list, 1)
		if current.x == goal.x and current.y == goal.y then
			local path = {}
			local temp = current
			while temp do
				table.insert(path, 1, {x = temp.x, y = temp.y})
				temp = came_from[temp]
			end
			return path
		end

		table.insert(closed_list, current)
		for _, neighbor in ipairs(get_neighbors(current)) do
			local tentative_g = current.g + 1
			local neighbor_node = {x = neighbor.x, y = neighbor.y, g = tentative_g, h = heuristic(neighbor, goal)}
			neighbor_node.f = neighbor_node.g + neighbor_node.h

			local skip = false
			for _, node in ipairs(closed_list) do
				if node.x == neighbor_node.x and node.y == neighbor_node.y then
					skip = true
					break
				end
			end

			if not skip then
				local in_open = false
				for _, node in ipairs(open_list) do
					if node.x == neighbor_node.x and node.y == neighbor_node.y and tentative_g >= node.g then
						in_open = true
						break
					end
				end

				if not in_open then
					table.insert(open_list, neighbor_node)
					came_from[neighbor_node] = current
				end
			end
		end
	end

	return nil
end

return astar
