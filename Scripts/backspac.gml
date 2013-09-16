if (global.upgradeone)=0
{
if (global.upgradetwo)=0
exit
else
{
if global.upgradepic = 0
global.upgradepic=2
else
global.upgradepic=0
}
}
else
{
if global.upgradetwo = 0
global.upgradepic = !global.upgradepic
else
{
if global.upgradepic = 2
global.upgradepic = 0
else
global.upgradepic +=1
}
}