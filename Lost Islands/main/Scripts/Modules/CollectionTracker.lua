--@Author Aidan Cox
--@description - tracks all loaded collections

-- collection_tracker.lua

local M = {}

M.collections = {}

-- CollectionTracker.lua

-- List of game objects to initialize
M.game_objects = { "slime"}  -- Add all game object IDs here

-- Function to send a message to all game objects in the list
function M.init_all_enemies()
	local collection_key = M.get_collection_key()
	for _, id in ipairs(M.game_objects) do
		local url = msg.url(collection_key, "/"..id, "Enemy")
		print("Sending 'init_enemy' to: ", url)
		msg.post(url, "init_enemy")
	end
end

function M.on_message(self, message_id, message, sender)
	print("Collection Tracker on message func")

	if message_id == hash("proxy_unloaded") then
		M.collections[sender] = nil
		print("Collection unloaded:", tostring(sender))

	elseif message_id == hash("proxy_loaded") then
		-- Unload currently loaded collection before loading the new one
		for url, _ in pairs(M.collections) do
			msg.post(url, "unload") -- Sends unload message to any loaded collection
			M.collections[url] = nil
			print("Unloading existing collection:", tostring(url))
		end

		M.collections[sender] = true
		
		print("Collection loaded:", tostring(sender))
	end

	M.print_loaded_collections()		
	M.init_all_enemies()
end

M.key = nil

function M.get_collection_key()
	local url = M.get_loaded_collection()
	local parts = {}
	for part in string.gmatch(url, "[^:/#]+") do
		table.insert(parts, part)
	end
	M.key = parts[#parts]
	if M.key:sub(-1) == "]" then
		M.key = M.key:sub(1, -2)
	end
	return M.key == "main" and parts[#parts - 1] or M.key
end


function M.is_collection_loaded(collection_url)
	print("Checking collection:", tostring(collection_url))
	--M.print_loaded_collections()
	
	local bool = false
	for url, loaded in pairs(M.collections) do
		if loaded and url == collection_url then
			bool = true
		end
	end
		return(bool)
	end

function M.get_loaded_collection()
	for url, loaded in pairs(M.collections) do
		if loaded then
			return(tostring(url))
		else
			print("Not Loaded URL:", url, "State:", loaded) -- Optional to see all states
		end
	end
end

function M.print_loaded_collections()

	if M.collections == nil then 
		print("Error: collections table is nil") 
		return
	end
	
	print("Loaded collections:")
	for url, loaded in pairs(M.collections) do
		if loaded then
			print("is loaded check = " .. tostring(M.is_collection_loaded(url)))
			print(url, "is loaded.")
		else
			print("Not Loaded URL:", url, "State:", loaded) -- Optional to see all states
		end
	end
end

return M
