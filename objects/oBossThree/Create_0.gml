/// @description Insert description here
// You can write your code in this editor

range = 250;

phase1 = true;
phase2 = false;
phase1cd = 2;
phase2cd = 1;
phasecd_init = 1;
phasecd_current = phasecd_init;
countdownrate_spawnp1 = 70;//Lower is faster
countdownrate_spawnp2 = 35;//Lower is faster
countdownrate = 60;//Lower is faster
countdownratep2 = 35;//Lower is faster
countdownratelong = 220;//Lower is faster
countdown = countdownrate;
bulletcount = 0;
spawncount = 0;
knockback = 4;

BossBullet = oBoss3Bullet;
Minion = oMinionThree;

B3Death = false;

//Health
scale = 0.55;
hp = 1000;
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