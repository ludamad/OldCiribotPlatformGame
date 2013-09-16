if !objPlayer.pbut[argument0] and keyboard_check(argument1)
{objPlayer.pbut[argument0]=1 return true}
else
if keyboard_check(argument1)
objPlayer.pbut[argument0]=1
return 0