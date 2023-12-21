//Used to change the goalpost's pile of ground when Horatio scores
with(self){
if(current_score > 0){
    for(var i = 0; i < current_score; i++){
        draw_sprite_ext(sprite_get("ground_lump"), 1, self.x, self.y + (sprite_get("ground_lump").y * i), 1, 1, 0, c_white, 1);
    }
}
}