-- title:  Remap demo
-- author: AnastasiaDunbar, Lua translation by StinkerB06

--Note that `yourWaterfallTile`, `speed` and `frames` aren't defined here.
--This is up to you. The value of `speed` should be greater than 0 but less than or equal to 1.
gameTicks=0
function remap(tile,x,y)
	local outTile,flip,rotate=tile,0,0
	if tile==yourWaterfallTile then
		outTile=outTile+math.floor(gameTicks*speed)%frames
	end
	return outTile,flip,rotate --or simply `return outTile`.
end
function TIC()
	cls()
	map(0,0,30,17,0,0,-1,1,remap) --The `remap()` function is used here.
	gameTicks=gameTicks+1
end
