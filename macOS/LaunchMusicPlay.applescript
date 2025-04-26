tell application "Music"
	activate
	
	set shuffle enabled to true
	set song repeat to all
	
	if exists (playlist "Select Game") then
		play playlist "Select Game"
	else
		display dialog "playlist 'Select Game'does not exist." buttons {"OK"} default button 1
		return
	end if
	
end tell