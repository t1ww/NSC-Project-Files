
// Inherit the parent event
event_inherited();

hpscale = 0.15;
enemySpeed = random_range(0.9, 1);
hp_max = 20;
hp = hp_max;
state = EnemyState.WANDER;

//Enemy Sprites
spriteMove = sMinionTwo;

//Enemy Function
enemyScript[EnemyState.WANDER] = EnemyWander;
enemyScript[EnemyState.CHASE] = EnemyChase;

scale = 0.6;
image_xscale = scale;
image_yscale = scale;

knockback = 4;

Death = false;

//Attack
atk_cd = 10;
atk_cdcurrent = 0;


