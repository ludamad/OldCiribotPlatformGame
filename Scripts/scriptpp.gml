while 1
{
draw_roundrect(150,200,500,320);
draw_text_ext(210,210, 'Overwriting Save - Press backspace to cancel and CTRL to continue', -1, 270);
screen_refresh();
keyboard_wait();
if keyboard_check(vk_backspace)
return 1
if keyboard_check(vk_control)
return 0
io_clear()
}