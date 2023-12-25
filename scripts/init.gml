combo_count = 0;
combo_max = 5;
combo_timer = 0;
combo_timeout = 5;
timing = false;
has_ground = false;
ground_lump = false;
steelman = false;
strawman = false;
tip_dir = point_direction(0,0,0,0);
tip_dist = point_distance(0,0,0,0);
ground_proj_fx = hit_fx_create( sprite_get("ground_proj"), 12);
ground_lump_fx = hit_fx_create( sprite_get("ground_lump"), 12);
goal_obj = noone;
lump_obj = noone;
golden=true;
max_whip_dist = 250;
window_loops = 0;

hurtbox_spr = sprite_get("horatio_hurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 72;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 5;
dash_speed = 5;
dash_turn_time = 10;
dash_turn_accel = 8;
dash_stop_time = 8;
dash_stop_percent = .25; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .25;
moonwalk_accel = 1.4;

jump_start_time = 3;
jump_speed = 12;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .6;
prat_fall_accel = 0.75; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 2;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 12; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .75;
hitstun_grav = .525;
knockback_adj = 0.85; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 5; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 7;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 15;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_syl");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = -20;
bubble_y = 25;

small_wood_hfx = hit_fx_create(sprite_get("hfx_wood_small"), 18);
large_wood_hfx = hit_fx_create(sprite_get("hfx_wood_large"), 21);
xlarge_wood_hfx = hit_fx_create(sprite_get("hfx_wood_xlarge"), 28);
small_leaf_hfx = hit_fx_create(sprite_get("hfx_leaf_small"), 12);
xlarge_leaf_hfx = hit_fx_create(sprite_get("hfx_leaf_xlarge"), 28);