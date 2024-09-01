
// Inherit the parent event
event_inherited();

hpscale = 0.18;
hp_max = 17;
hp = hp_max;
state = EnemyState.WANDER;

//Enemy Sprites
spriteMove = sMinionThree;

//Enemy Function
enemyScript[EnemyState.WANDER] = EnemyWander;
enemyScript[EnemyState.CHASE] = EnemyChase;

scale = 0.4;
image_xscale = scale;
image_yscale = scale;

knockback = 3.5;

Death = false;

//Attack
atk_cd = 10;
atk_cdcurrent = 0;


