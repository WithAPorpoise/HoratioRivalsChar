//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_USPECIAL_GROUND || attack == AT_USPECIAL || attack == AT_DSPECIAL_AIR){ //no B-reversing Uspecial or Dspecial, since they require a quick backward input to aim
    trigger_b_reverse();
}

//Swap to golden fstrongs when golden achieved
if(attack == AT_FSTRONG||attack == AT_USTRONG || attack == AT_DSTRONG){
    if !golden {
        if window == 4{
            window=10;
            window_timer=0;
        }
    }
    if golden{
        if window ==1{ 
            window = 6;
            window_timer=0;
        }
    }
}

//if (attack == AT_FSPECIAL && free){
//    attack = AT_FSPECIAL_AIR;
//}

if (attack == AT_FSPECIAL){
    if (golden) golden = !golden;
    if (window == 2 ){
        if(special_down || loops <= 3){
            if (free && loops<2){
                set_attack_value(AT_FSPECIAL,AG_USES_CUSTOM_GRAVITY,1);
                set_window_value(AT_FSPECIAL,1,AG_WINDOW_CUSTOM_GRAVITY,0);
                set_window_value(AT_FSPECIAL,2,AG_WINDOW_CUSTOM_GRAVITY,0);
            }
            else{
                set_attack_value(AT_FSPECIAL,AG_USES_CUSTOM_GRAVITY,0);
            }
            if(abs(hsp) <=abs(1)){
                window = 3;
            }
            if(joy_dir == -spr_dir){
                spr_dr *= -1;
            }
            else{
                if (window_timer ==6){
                    loops+=1;
                }
                window_timer = window_timer %6;
            
            }
        }
        else {
            loops = 0;
            window_timer = 0;
            window = 3;
        }
    }
    if (window == 3 ){
        if (sprite_index >= 10){
            window = 4;
            window_timer = 0;
        }
    }
    if (window == 4){
        if (sprite_index >= 12){
            window_timer = 0;
            window = 8;
            attack_end() ;
            
        }
    }
                
}
/*
if (attack != AT_NSPECIAL && attack!=AT_NSPECIAL_AIR){
    if (tip!=noone){
        tip.destroyed = 1;
        destroy_hitboxes();
    }
}*/
if (attack == AT_NSPECIAL || attack==AT_NSPECIAL_AIR){
    //if (!golden) {golden = !golden;}
    if (window == 1){
        if (window_timer == get_window_value(AT_NSPECIAL, window, AG_WINDOW_LENGTH)){
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 20);
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
            create_hitbox(AT_NSPECIAL,1,x+(20*spr_dir),y-30);
            tip = asset_get("pHitBox");
                }
        with(asset_get("obj_article1")){
            if (player_id == other && player_id.goal_obj != noone) 
                player_id.goal_obj=id;
        }
    }
    
    if (instance_exists(tip)){
                
                var tip_dir = point_direction(x, y-char_height*.5, tip.x, tip.y);
                var tether_speed = 32;
    }
    
    if (window == 2){
        if(instance_exists(tip)){
            if(tip != goal_obj){
                if(special_down && point_distance(x, y, tip.x, y) <max_whip_dist){
                     window_timer = 0;
                     //if(tip.hitbox_timer == (tip.length-5)){
                       //     tip.length+=5;
                        //}
                    tip.hitbox_timer=0;
                }
                else {
                    //tip.length *= 2;
                    window = 5;
                }
            }
            else {
                tip.hsp = -10*spr_dir;
                if(free) window = 3;
                else window = 6;
            }
        }
        else window = 6;
    }
    
    //freeze the laurel tip in place
    if(window = 3){
        
    // MovingTO THE laurel tip
        if (!hitpause){
            if (tip == goal_obj){
                if(!tethered)tethered=true;
                
                if(free||tethered){
                    //zoom toward the tip
                    hsp = lengthdir_x(tether_speed, tip_dir);
                    vsp = lengthdir_y(tether_speed, tip_dir);
                    
                    //stop when close
                    if (point_distance(x, y, tip.x, y) < 32){
                        set_state(PS_IDLE_AIR);
                        hsp = clamp(hsp, -6, 6);
                        vsp = clamp(vsp, -10, -4);
                        tethered = false;
                        window = 6
                    }
                }
                else{
                    window = 4;
                }
            }
            else {
                set_state(PS_IDLE_AIR);
            }
        }
    }
    
    if (window == 4){
        if (instance_exists(tip)){
            spr_dir = sign(tip.x - x);
            if (spr_dir == 0) spr_dir = 1;
            var tip_dir = point_direction(x,y-char_height*.5,tip.x,tip.y);
            tip_dir = 270 - tip_dir;
            if (tip_dir > 180) tip_dir -= 360;
            if (tip_dir < -180) tip_dir += 360;
            tip_dir = abs(tip_dir);
            var temp_img = 0;
            if (tip_dir > 144) temp_img = 4;
            else if (tip_dir > 108) temp_img = 3;
            else if (tip_dir > 72) temp_img = 2;
            else if (tip_dir > 36) temp_img = 1;
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);
        }
        window = 3;
    }
    
    if window == 5{
        if(instance_exists(tip)){
            if(tip != goal_obj){
                if window_timer==1{
                    tip.hsp = -lengthdir_x(tether_speed, tip_dir);
                    tip.vsp = -lengthdir_y(tether_speed, tip_dir);
                    tip.grav = 0;
                }
                else{
                    tip.hsp -= 2*spr_dir;
                    
                }
                window_timer=0;
                if (place_meeting(x,y,tip)|| (goal_obj != noone && goal_obj.hsp==0)){
                    window=6;
                }
            }
        }
    }
    
    if (window == 6 ){
        move_cooldown[AT_NSPECIAL] = 20;
        tethered = false;
        if(instance_exists(tip)){
            if(tip != goal_obj){
                tip.hitbox_timer = tip.length;
            }
            tip.destroyed=1;
            tip=noone;
        }
    }
    
    //END OF WINDOW CODE

}
if (attack == AT_USPECIAL){
    if (!golden) {
        set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("ground_proj"));
        //set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, ground_proj_fx);
        
    }
    else {
        set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("gold_proj"));
        //set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, gold_proj_fx);
        
    }
    if(free){
        set_window_value(AT_USPECIAL,1,AG_WINDOW_LENGTH, 2);
        set_window_value(AT_USPECIAL,2,AG_WINDOW_LENGTH, 6);
        if (window == 2){
            vsp = -8;
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))recoveries++;
        }
    }
    else{
        set_window_value(AT_USPECIAL,1,AG_WINDOW_LENGTH, 10);
        set_window_value(AT_USPECIAL,2,AG_WINDOW_LENGTH, 12);
    }
    if (has_ground){
        if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            var throw_speed = 7;
            if (special_down){
                throw_speed = 11;
            }
            var throw_angle = 65;
            if (!joy_pad_idle){
                var angle_diff = 90 - joy_dir;
                if (angle_diff < -180) angle_diff += 360;
                if (angle_diff > 180) angle_diff -= 360;
                var angle_change = 25*(dsin(angle_diff)*dsin(angle_diff));
                throw_angle -= sign(angle_diff)*spr_dir*angle_change;
            }
            set_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED, throw_speed*dcos(throw_angle));
            set_hitbox_value(attack, 1, HG_PROJECTILE_VSPEED, throw_speed*-dsin(throw_angle));
            
            create_hitbox(AT_USPECIAL, 1, x+30, y-53);
            
            has_ground=false;
        }
        
    }
     else if(window==3){
        create_hitbox(AT_USPECIAL, 2, x, y);
    }   
    if (window == /*get_attack_value(attack,AG_NUM_WINDOWS)*/3){
        if(recoveries >=2){
            set_state(PS_PRATFALL);
        }
    }
    
}

if (attack == AT_DSPECIAL){
    if (window == 2 && window_timer == 1){
        var temp_x = 32;
        var max_temp_x = 96;
        if (left_down) max_temp_x -= 48*spr_dir;
        if (right_down) max_temp_x += 48*spr_dir;
        while (temp_x < max_temp_x
        && (position_meeting(x+temp_x*spr_dir, y+2, asset_get("par_block"))
        || position_meeting(x+temp_x*spr_dir, y+2, asset_get("par_jumpthrough")))
        && !position_meeting(x+temp_x*spr_dir, y-2, asset_get("par_block"))){
            temp_x++;
        }
        var stalk = instance_create(x+temp_x*spr_dir, y, "obj_article1");
        stalk.player_id = id;
        stalk.player = player;
        stalk.spr_dir = spr_dir;
        
        move_cooldown[AT_DSPECIAL] = 60;
        move_cooldown[AT_DSPECIAL_AIR] = 60;
    }
    //if !has_ground has_ground = !has_ground;
}

if (attack == AT_DSPECIAL_AIR){
    if (!free){
        if (window == 1){
            attack = AT_DSPECIAL;
            hurtboxID.sprite_index = get_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE);
        }
        else {
            set_state(PS_LAND);
        }
    }
    if (window == 2 && window_timer == 1){
        move_cooldown[AT_DSPECIAL] = 60;
        move_cooldown[AT_DSPECIAL_AIR] = 60;
    }
}