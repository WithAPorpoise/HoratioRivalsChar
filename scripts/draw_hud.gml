//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_ground_color = c_black;
var temp_laurel_color = c_black;
if(init >0){
if (has_ground) temp_ground_color = c_white;
else if (combo_count>0 && combo_count<5) temp_ground_color = c_gray;
if (golden) temp_laurel_color = c_white;
else if (current_score > 0 && current_score<max_score) temp_laurel_color = c_gray;



draw_sprite_ext(sprite_get("combo_icon"), 1, temp_x+186, temp_y-20, 2, 2, 0, temp_laurel_color, 1);

draw_sprite_ext(sprite_get("combo_icon"), 0, temp_x+186, temp_y-20, 2, 2, 0, temp_ground_color, 1);
}