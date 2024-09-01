state = PlayerStateFree; 
lastState = state;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

//Init
if (global.Death == true) global.Death = false;

//Player physics
Phascontrol = true;
image_speed = 0;
hSpeed = 0;
vSpeed = 0;
Walk = 2.05;
WalkGun1 = 1.45;
WalkGun2 = 0.9;
WalkGun3 = 1.35;

RollSpeed = 5;
RollDistance = 80;

//Sprite
spriteRoll = sPlayerRoll;
spriteRun = sPlayerrun;
spriteIdle = sPlayer;
spriteGunRun = sPlayerwithgun;
spriteGunIdle = sPlayergunIdle;
localFrame = 0;

image_index = 0;
image_xscale = 0.3;
image_yscale = 0.3;

//initial pos
PStartX = x;
PStartY = y;

Planet1 = "r1Planet";
Planet2 = "r2Planet";
Planet3 = "r3Planet";
Tutorialzone = "rTutorial";

//Roll Setup
rollcd = 60;
rollcd_current = 0;

//Weapon
weapon = 0;
reloadcd = 200;
reloadcd_current = 0;
///Ammo setting

ammosprite = 0;

//HP
///Health setting
healcd= 100;
healcd_current = 0;
HP_Used = true;

hp = 80;
hp_max = hp;

healthbar_width = 100;
healthbar_height = 12;
healthbar_x = (320/4) - (healthbar_width/2);
healthbar_y = 35;

flash = 0;

//Inventory
Inventory = ds_map_create();
InventoryItems = ds_list_create();

InvX = 30;
InvY = 75;

//Text Check
TextLeft = false;

CamUpdate = true;

