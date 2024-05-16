alpha -= alpha_amount;

scale += scale_amount;

if image_alpha <= 0 {
	instance_destroy();
}

image_xscale = scale;
image_yscale = scale;

image_alpha = alpha;

