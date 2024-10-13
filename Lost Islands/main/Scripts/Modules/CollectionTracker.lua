--@Author Aidan Cox
--@description - tracks all loaded collections

-- collection_tracker.lua

local M = {}
M.collections = {}

function M.on_message(self, message_id, message, sender)
	if message_id == hash("proxy_loaded") then
		M.collections[sender] = true
		print("Collection loaded:", tostring(sender))
	elseif message_id == hash("proxy_unloaded") then
	M.collections[sender] = nil
	print("Collection unloaded:", tostring(sender))
	end
	M.print_loaded_collections()
end


function M.is_collection_loaded(collection_url)
	print("Checking collection:", tostring(collection_url))
	M.print_loaded_collections()
	
	local temp = false
	for url, loaded in pairs(M.collections) do
		if loaded and url == collection_url then
			temp = true
		end
	end
		return(temp)
end

function M.print_loaded_collections()
	print("Loaded collections:")
	for url, loaded in pairs(M.collections) do
		if loaded then
			print(url, "is loaded.")
		end
	end
end

return M
