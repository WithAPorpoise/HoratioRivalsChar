//post-draw
shader_start();

switch (state){
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
        if (attack == AT_NSPECIAL){
            if (instance_exists(tip)){
                
                if (goal_obj!=tip){
                    tip_height = tip.y;
                    var tip_dir = point_direction(x,y-48,tip.x,tip.y+8);
                    if (spr_dir == -1) tip_dir += 180;
                    var tip_dist = point_distance(x,y-48,tip.x,tip.y+8);
                }
                else{
                    var tip_dir = point_direction(x,y-48,tip.x,tip_height);
                    if (spr_dir == -1) tip_dir += 180;
                    var tip_dist = point_distance(x,y-48,tip.x,tip_height);
                }
                
                //since the arm sprite's origin isn't centered, do some math
                if (tip_dist < 7) tip_dist = 7; //needs minimum distance to prevent arcsin errors
                var arm_dir = darcsin(6 / tip_dist);
                arm_dir = tip_dir - arm_dir*spr_dir;
                if (spr_dir == -1) arm_dir += 180;
                
                if (tip_dist > 16){
                    var chain_x = x + lengthdir_x(6, arm_dir+90*spr_dir) + lengthdir_x(54, arm_dir);
                    var chain_y = y - 46 + lengthdir_y(6, arm_dir+90*spr_dir) + lengthdir_y(54, arm_dir);
                    
                    var chain_length = 0;
                    var max_chain_length = point_distance(chain_x, chain_y, tip.x, tip.y);
                    
                    while (chain_length < max_chain_length-8){
                         
                        draw_sprite_ext(sprite_get("chain"), floor(chain_length/16), chain_x, chain_y, 1, 1, arm_dir, c_white, 1);
                        chain_x += lengthdir_x(16, arm_dir);
                        chain_y += lengthdir_y(16, arm_dir);
                        chain_length += 16;
                    }
                    
                }
            }
        }
    break;
}

shader_end();