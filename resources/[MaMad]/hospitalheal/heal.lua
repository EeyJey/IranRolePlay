--Script by Cody196 and for open source use.

--For Sandy Shores Medical Center, draws marker

local hospitalPickup = {
	Pickup = {-1888453608, 1839.03, 3673.25, 34.28}
	
local marker = AddBlipForCoord( 1839.6, 3672.93, 34.28 );
SetBlipSprite( marker, 61 );

function createPickup(typeHash, posX, posY, posZ)
	CreatePickup(-1888453608, 1839.03, 3673.25, 34.28)
	wait(60)
	return
end

function createBlip()
	local blip = AddBlipForCoord(pos[1],pos[2],pos[3])
	SetBlipAsShortRange(blip,true)
	SetBlipSprite(blip,61)