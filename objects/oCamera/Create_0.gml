cam = view_camera[0];

follow = oPlayer;
viewWHalf = camera_get_view_width(cam) * 0.5;
viewHHalf = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

shakeTime = 0;
shakeMagnitude = 0;
shakeRemain = 0;
shakePercent = 1;