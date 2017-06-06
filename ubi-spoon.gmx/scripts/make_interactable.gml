///make_interactable();
var inst = instance_create(x,y,obj_interactable);
inst.master = id;
inst.image_xscale = sprite_width/16;
inst.image_yscale = sprite_height/16;
interaction = inst;
return inst;
