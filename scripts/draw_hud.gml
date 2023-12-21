//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_black;
with (player){

    if (other.timing) temp_color = c_gray;

    if (other.has_ground) temp_color = c_white;
}
draw_sprite_ext(sprite_get("combo_icon"), 0, temp_x+186, temp_y-20, 2, 2, 0, temp_color, 1);