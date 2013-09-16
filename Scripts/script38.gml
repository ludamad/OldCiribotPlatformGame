if !keyboard_check(global.cblock)
{objPlayer.pbut[1]=0}
if objPlayer.pbut[0] and !keyboard_check(global.cjump)
{objPlayer.pbut[0]=0 return 1}
else
{if !keyboard_check(global.cjump)
objPlayer.pbut[0]=0}
return 0