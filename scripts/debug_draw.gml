//debug-draw


//draw_debug_text(x,y,"window: " + string(window));

var golden_state = "Golden: " + string(golden);
    draw_debug_text(x-10,y+10,string(player));
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