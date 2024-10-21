--@Author Aidan Cox
--@description - tracks all loaded collections

-- collection_tracker.lua

local M = {}

M.collections = {}

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

function M.print_loaded_collections()
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
