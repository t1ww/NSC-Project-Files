
// Inherit the parent event
event_inherited();

hp_max = 8;
hp = hp_max;
state = EnemyState.WANDER;

//Enemy Sprites
spriteMove = sMinionOne;

//Enemy Function
enemyScript[EnemyState.WANDER] = EnemyWander;
enemyScript[EnemyState.CHASE] = EnemyChase;

scale = 0.5;
image_xscale = scale;
image_yscale = scale;

knockback = 4.5;

Death = false;

//Attack
atk_cd = 10;
atk_cdcurrent = 0;


