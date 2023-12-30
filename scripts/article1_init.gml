//article1_init

init = 0;
sprite_index = sprite_get("goal_post");

state = 0;
state_timer = 0;
can_be_grounded = true;
is_hittable = false;
ignores_walls = false;
free = false;
current_score = 0;
max_score = 0;
uses_shader = true;
golden = false;
ground_friction=1;
myplayer=noone;