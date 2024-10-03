--@Author Aidan Cox
--@description - tracks all loaded collections

-- collection_tracker.lua
local M = {}

M.collections = {}

function M.on_message(self, message_id, message, sender)
	if message_id == hash("proxy_loaded") then
		M.collections[sender] = true
		print("Collection loaded:", sender)
	elseif message_id == hash("proxy_unloaded") then
		M.collections[sender] = false
		print("Collection unloaded:", sender)
	end
	M.print_loaded_collections()
end

function M.is_collection_loaded(collection_url)
	return M.collections[collection_url] == true
end

function M.print_loaded_collections()
	print("Loaded collections:")
	for url, loaded in pairs(M.collections) do
		if loaded then
			print(url)
		end
	end
end

return M
