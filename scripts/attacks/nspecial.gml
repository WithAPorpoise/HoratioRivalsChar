set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_upb_hit"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_land"));

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_syl_dstrong"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(AT_NSPECIAL, 2);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 82);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 100);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, large_wood_hfx);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));