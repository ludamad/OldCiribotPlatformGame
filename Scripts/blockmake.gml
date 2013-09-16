if vspeed > 0
{
y-=2
move_contact_solid(270,6)
}
if not place_free(x,y+6) or  not place_free(x,y+1)
{
if (facing = 'right')
{
if place_free(x+32,y)and not position_meeting(x+32,y,objLadder)and !(global.upgradepic = 2)
{
if global.upgradepic=0
instance_create(x+32,y,object260)
else
instance_create(x+32,y,object336)
}
else
{
if place_free(x+32,y+32)and not position_meeting(x+32,y+32,objLadder) and global.upgradepic = 2
instance_create(x+32,y+32,object353)
}
}
else
{
if place_free(x-32,y) and not position_meeting(x-32,y,objLadder) and !(global.upgradepic = 2)
{
if global.upgradepic=0
instance_create(x-32,y,object260)
else
instance_create(x-32,y,object336)
}
else
{
if place_free(x-32,y+32)and not position_meeting(x-32,y+32,objLadder) and global.upgradepic = 2
instance_create(x-32,y+32,object353)
}
}
}
