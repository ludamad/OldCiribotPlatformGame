while 1
{
draw_roundrect(150,200,500,320);
draw_text_ext(210,210, argument0, -1, 270);
screen_refresh();
keyboard_wait();
if keyboard_check(argument1)
return 1
if keyboard_check(argument2)
return 0
io_clear()
}