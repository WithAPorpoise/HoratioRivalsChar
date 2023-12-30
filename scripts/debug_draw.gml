//debug-draw


//draw_debug_text(x,y,"window: " + string(window));

var golden_state = "Golden: " + string(golden);
var player_info = string(player);
draw_debug_text(x-8,y+10,player_info);
draw_debug_text(x,y,golden_state);

with(asset_get("obj_article1")){
    
    var golden_state = "Golden: " + string(golden);
    draw_debug_text(x,y,golden_state);
}
with(asset_get("obj_article2")){
    
    var golden_state = "Golden: " + string(golden);
    draw_debug_text(x,y,golden_state);
    draw_debug_text(x-10,y+10,string(player));
    draw_debug_text(x,y+10,string(myplayer));
}
with(asset_get("pHitBox")){
    
    var hitbox_info = "hbox: " +string(attack)+", "+ string(hbox_num);
    draw_debug_text(x,y,hitbox_info);
    // draw_debug_text(x-10,y+10,string(player));
    // draw_debug_text(x,y+10,string(myplayer));
}