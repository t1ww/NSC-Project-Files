image_alpha = 1;
draw_self();

if (flash > 0)
{
	flash -= 1;
	image_alpha = 0.5;
	shader_set(shFlash);
	draw_self();
	shader_reset();
}