-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

local M = {}

local time_step = 0.1

function M.CalculateMomentum(mass, initVel, gravity, fricCoff, position)

	local velocity = initVel
	local friction
	local deceleration
	local positions = {}
	
	while velocity > 0 do
		friction = fricCoff * mass * gravity

		deceleration = friction / mass

		velocity = velocity - deceleration * time_step

		if velocity < 0 then 
			velocity = 0
		end

		position = position + (velocity * time_step)

		table.insert(positions, position)
	end

	return(positions)
end


return(M)