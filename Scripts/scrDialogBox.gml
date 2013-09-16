//scrDialogBox('Bob:','Wazzupp??!!',true,sprRooz);
//Initializing
//
//CREDIT: Carl Larsson, aka Megabrain, Enigma or Teslagon.
//
font_color=c_black;
if (argument1 = true) then
{
 keyboard_clear(ord('A'));      //Clears the enter key, which as defualt is the key to view the dialog
 tx = view_x[0]+view_width[0]/2;             // Changes this to your settings, the defualt is the lower left corner.
 ty = view_y[0]+view_height[0]/2; // Changes this to your settings, the defualt is the lower left corner.
 
 //This part the box for the text and picture(if we have set a picture)
 if (argument2 <> 0) then
 {   
   draw_sprite(argument2,argument3,tx,ty-162);  //Draws picture
 }
 draw_sprite(sprTBox,0,tx,ty-96);   //Draws the Text Box
 //Some Variables
 skip = false; 
 split = false;
 finished = false;
 text = argument0;
 pos  = 1;
 cur  = '';
 
 if (is_string(argument4))
 { 
   font_style=fs_bold;
   draw_text(tx+8,ty-92,argument4);
 } else {
   font_style=fs_bold;
   draw_text(tx+8,ty-92,"???:");
 }
 font_style=fs_normal;
 
 //Cuts the dialog into pieces if it is too long.
 cut = 80;
 if (string_length(text) > cut) then
 {
 text = string_copy(argument0,1,cut);
 while (string_char_at(text,cut)!=' ')
 {
 if (cut < 90) then {cut+=1;}
 text = string_copy(argument0,1,cut);
 if (cut = 90) then {break;}
 }
 split = true;
 rest_text = string_copy(argument0,cut,(string_length(argument0)-string_length(text))+1);
 }
 
 //This part is very fragile, as it is the code that makes the wordwrapp =)
 // text = string_replace_all(text,'#','');
 if (string_length(text) > 33) then {lines = 1;}
 if (string_length(text) > 66) then {lines = 2;}
 if (string_length(text) < 33) then {lines = 0;}
 if (string_char_at(text,1) = ' ') then {text = string_replace(text,' ','');}
 for (li=1;li<=lines;li+=1) {
   add_13 = 0;
     while (string_char_at(text,(33*li)-add_13) != ' ' or add_13 < 7)
     {
       if (string_char_at(text,(33*li)-add_13) = ' ' or add_13 > 7) then {break;}
       add_13 += 1;
     }
   mark_13[li] = (33*li)-add_13;
   text = string_insert(" #",text,(33*li)-add_13);
 }  
 text = string_replace_all(text,'# ','#');
 //End of word wrapp part
}
//Updates and wordwraps
if (finished = false) then
{
 cur = string_copy(text,1,pos);
 pos += 1;
//Draws
draw_text_ext(tx+6,ty-73,cur,15,999); //sprLettersWhite,'!',1); //Draws the text, you can change this to draw_text_ext if you don't want the sprite text =)
screen_refresh(); //Refreshes screen, nessescary!
if (text = cur) then {finished = true;} //Checks if we are done..
}
//Checks if we press space to view all text
if (keyboard_check(vk_space)) then
{
 pos = string_length(text);
 cur = text;
 keyboard_clear(vk_enter);
 screen_refresh();
}
//Checks if done
if (finished = true) then
{
draw_sprite(sprTBoxEnd,-1,tx+130,ty-20);//Draws that tiny little black box at the end =)
//
screen_refresh();
io_clear();
if (skip = false) then {keyboard_wait();}
screen_redraw();
io_clear();
if (split = true) then{scrDialogBox(rest_text,true,argument2,argument3,argument4);}//If the text was too long, we will set up a new dialog =)
}
else
{
//Repeats and writes a new letter
sleep(40);
sound_play(snd_typing);
scrDialogBox(argument0,false,argument2,argument3,argument4);
}
