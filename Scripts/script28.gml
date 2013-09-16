global.metalic=0
global.door=0
if room = boss
{global.hard = 0}
global.blocktype =0
global.upgradeone=0
global.upgradetwo=0
global.upgradepic=0
global.shoot = 0
if global.savex !=-1
{
if global.savey !=-1
{
if room=boss2
{
with (fallinbloc)
instance_destroy()
}
global.door=global.savedoor
objPlayer.x=global.savex
objPlayer.y=global.savey
global.upgradeone=global.saveupgradeone
global.upgradetwo=global.saveupgradetwo
global.upgradepic=global.saveupgradepic
global.savex=-1
global.savey=-1
global.saveupgradeone=0
global.saveupgradetwo=0
global.saveupgradepic=0
global.shoot = global.saveshoot
global.metalic=global.hevmet
with (object484)
{
instance_destroy()
}
var in;
in=0
repeat (global.crateno)
{
instance_create(global.crates[in,0],global.crates[in,1],object484)
in+=1
}
}
}
global.hblock = 0 - global.blockupgrade
timeshoot = 0
climb = 0
kneel=false;
facing='right'
water=false
ladder=false
image_speed=.5

if global.hard=0
{global.difbs =8
global.bultime =10
global.ebultime = 200
global.ebulspeed = 4
}
if global.hard=1
{global.difbs =8
global.bultime =15
global.ebultime = 150
global.ebulspeed = 4
global.hblock = 50 - global.blockupgrade/2
}