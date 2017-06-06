///light_build(instance);
var inst = argument0;
if (inst.object_index == obj_light){
  if (inst.sprite == -1){
    sprite_delete(inst.sprite);
  }
  var surf = surface_create(inst.radius*2, inst.radius*2);
  surface_set_target(surf);
  draw_sprite_ext(spr_light,0,inst.radius,inst.radius,inst.radius/128,inst.radius/128,0,c_white,1);
  draw_set_blend_mode(bm_subtract);

  for (var i=0; i<instance_number(obj_wall); i++){
    var wall = instance_find(obj_wall,i);
    var vx = wall.y - inst.x;
    var vy = wall.x - inst.y;
    shadow_line(vx,vy,vx+wall.image_xscale*16,vy,inst.radius,inst.radius);
    //shadow_line(vx+3,vy+3,vx+wall.image_xscale*16,vy+wall.image_yscale*16-16,inst.radius,inst.radius);
    //shadow_line(vx+wall.image_xscale*16-3,vy+3,vx+wall.image_xscale*16,vy+wall.image_yscale*16-16,inst.radius,inst.radius);
  }
  
  draw_set_blend_mode(bm_normal);
  surface_reset_target();
  inst.sprite = sprite_create_from_surface(surf,0,0,inst.radius*2,inst.radius*2,0,0,inst.radius,inst.radius);
  surface_free(surf);
}
