local M = {}
local itm = require("main.Scripts.Modules.ItemProperties")
local item = require("main.Scripts.Modules.Items")

local shops = { 
	shopKeeper1 = { 
		amounts = {}
	}
}

function M.getMaxAmount(keeper)
	return(shops[keeper].amounts)
end

function M.setCurrentAmounts(keeper, amounts)
	shops[keeper].amounts = amounts
end

local function setShop(keeper)
	
end

return(M)