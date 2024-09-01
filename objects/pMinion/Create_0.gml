collisionMap = layer_tilemap_get_id(layer_get_id("Col")) 
collisionEnemyMap = layer_tilemap_get_id(layer_get_id("EnemyColZone"));

//Setup
state = EnemyState.IDLE;
enemySpeed = random_range(0.7, 0.85);
enemyWanderDistance = 50;
hSpeed = 0;
vSpeed = 0;
xTo = xstart;
yTo = ystart;
dir = 0;
TimePassed = 0;
Wait = 0;
WaitDuration = 60;
AggroCheck = 0;
AggroCheckDuration = 4;

knockback = 4;

//Enemy Sprites
spriteMove = sMinionOne;

//Enemy Function
enemyScript[EnemyState.IDLE] = -1;
enemyScript[EnemyState.WANDER] = -1;
enemyScript[EnemyState.CHASE] = -1;
enemyScript[EnemyState.ATTACK] = -1;
enemyScript[EnemyState.HURT] = -1;
enemyScript[EnemyState.DIE] = -1;
enemyScript[EnemyState.WAIT] = -1;

//HP
hp_max = 20;
hp = hp_max;
hpscale = 0.2;

healthbar_width = 100;
healthbar_height = 12;
healthbar_x = x - 27;
healthbar_y = y - 74;

flash = 0;

//Text
TextLeft = false;



