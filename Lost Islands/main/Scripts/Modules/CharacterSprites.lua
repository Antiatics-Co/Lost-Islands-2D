-- @title
-- @Author Aidan Cox
-- @Description
--  	This module keeps track of the options the player chooses for
-- their character sprite
-- @Version 1

local M = {}

M.sprite = {
	eyes = { shape = 0, colour = 0 },
	mouth = 0,
	hair = { shape = 0, colour = 0 },
	shirt = 0,
	trousers = 0,
	shoes = 0,
	skinTone = 0
}

return(M)

