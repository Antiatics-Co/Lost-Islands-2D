-- @title
-- @Author Aidan Cox
-- @Description
--  	This module keeps track of the options the player chooses for
-- their character sprite
-- @Version 1

local M = {}

local eyes = {}

local mouth
local hair = {}

local shirt
local trousers
local shoes
local skinTone

function M.setEyes(eye) -- eye = {shape, color}
	eyes = eyes
end

function M.setMouth(mou)
	mouth = mou
end

function M.setHair(hai)
	hair = hai
end

function M.setShirt(shrt)
	shirt = shrt
end

function M.setTrousers(pants)
	trousers = pants
end

function M.setShoes(shoe)
	shoes = shoe
end

function M.setSkinTone(tone)
	skinTone = tone
end

-----------------------------------------------------------------

function M.getEyes()
	return(eyes)
end

function M.getMouth()
	return(mouth)
end

function M.getHair()
	return(hair)
end

function M.getShirt()
	return(shirt)
end

function M.getTrousers()
	return(trousers)
end

function M.getShoes()
	return(shoes)
end

function M.getSkinTone()
	return(skinTone)
end

return(M)

