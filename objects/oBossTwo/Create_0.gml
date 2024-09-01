/// @description Insert description here
// You can write your code in this editor

range = 240;

phase1 = true;
phase2 = false;
phase1cd = 3;
phase2cd = 1;
phasecd_init = 1;
phasecd_current = phasecd_init;
countdownrate_spawnp1 = 85;//Lower is faster
countdownrate_spawnp2 = 60;//Lower is faster
countdownrate = 65;//Lower is faster
countdownratep2 = 45;//Lower is faster
countdownratelong = 240;//Lower is faster
countdown = countdownrate;
bulletcount = 0;
spawncount = 0;
knockback = 4;

BossBullet = oBoss2Bullet;
Minion = oMinionTwo;

B2Death = false;

//Health
scale = 0.55;
hp = 1400;
hp_max = hp;

healthbar_width = 100;
healthbar_height = 12;
healthbar_x = x - 25;
healthbar_y = y - 50;

flash = 0;

//Text Checker
Text_count = 0;

TextLeft = false;
ShakeLeft = 1;

//Alpha counter
alphacount = 0;

counter = 0;