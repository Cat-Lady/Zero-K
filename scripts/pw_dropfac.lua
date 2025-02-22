include "constants.lua"

local spGetUnitTeam = Spring.GetUnitTeam

--pieces
local base = piece("base")
local nano1, nano2 = piece("nano1", "nano2")
local build = piece("build")

--local vars
local nanoPieces = {nano1, nano2}
local nanoIdx = 1
local smokePiece = {base}

--opening animation
local function Open()
	SetUnitValue(COB.BUGGER_OFF, 1)
	SetUnitValue(COB.INBUILDSTANCE, 1)
end

--closing animation of the factory
local function Close()
	SetUnitValue(COB.BUGGER_OFF, 0)
	SetUnitValue(COB.INBUILDSTANCE, 0)
end

function script.Create()
	StartThread(GG.Script.SmokeUnit, smokePiece)
	Spring.SetUnitNanoPieces(unitID, nanoPieces)
end

function script.QueryBuildInfo()
	return build
end

function script.QueryNanoPiece()
	nanoIdx = nanoIdx + 1
	if (nanoIdx > #nanoPieces) then
		nanoIdx = 1
	end

	local nano = nanoPieces[nanoIdx]

	--// send to LUPS
	GG.LUPS.QueryNanoPiece(unitID,unitDefID,spGetUnitTeam(unitID),nano)

	return nano
end

function script.QueryLandingPads()
	return { build }
end

function script.Activate()
	if Spring.GetUnitRulesParam(unitID, "planetwarsDisable") == 1 or GG.applyPlanetwarsDisable then
		return
	end
	
	StartThread(Open)
end

function script.Deactivate()
	StartThread(Close)
end

--death and wrecks
function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth

	if (severity <= .25) then
		return 1 -- corpsetype
	elseif (severity <= .5) then
		return 1 -- corpsetype
	else
		return 2 -- corpsetype
	end
end