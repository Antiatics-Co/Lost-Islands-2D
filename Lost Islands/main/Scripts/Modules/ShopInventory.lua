local M = {}

local shops = { 
	shopKeeper1 = { 
		amounts = {}


	}
}

function M.getMaxAmounts(keeper)
	return(shops[keeper].amounts)
end

function M.setCurrentAmounts(keeper, amounts)
	shops[keeper].amounts = amounts
end
return(M)