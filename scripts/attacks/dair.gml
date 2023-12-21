set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -4);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -5);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED, -5);

//There are two hitboxes per hit, so 8
set_num_hitboxes(AT_DAIR,8);

//Hitbox 1 is the front hitbox, 2 is the rear hitbox
set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 2);
//Parented hitboxes do not inherit:
//HG_HITBOX_TYPE
//HG_WINDOW
//HG_WINDOW_CREATION_FRAME
//HG_LIFETIME
//HG_HITBOX_X
//HG_HITBOX_Y
//HG_HITBOX_GROUP

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_TYPE, 1);

set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 5);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 3);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -30);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, -30);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, -30);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, -5);

//the following values are all inherited by child hitboxes
//width and height
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 56);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 56);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 40);

//shape
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);

//priority
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);

//damage
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 4);

//knockback angle
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 195);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 345);

//base knockback
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 1);

//knockback scaling with damage
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .22);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .22);

//hitpause
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 0);

//hitpause scaling with damange
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .3);

//visual effects
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);

//sound effects
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


