///light_build(instance);
var inst = argument0;
if (inst.object_index == obj_light){
  if (inst.sprite == -1){
    sprite_delete(inst.sprite);
  }
  var surf = surface_create(inst.radius*2, inst.radius*2);
  surface_set_target(surf);
  draw_clear_alpha(c_black,0);
  draw_sprite_ext(spr_light,0,inst.radius,inst.radius,inst.radius/128,inst.radius/128,0,c_white,1);
  draw_set_blend_mode(bm_subtract);

  for (var i=0; i<instance_number(obj_wall); i++){
    var wall = instance_find(obj_wall,i);
    var vx = wall.x - (inst.x - inst.radius)+2;
    var vy = wall.y - (inst.y - inst.radius)+2;
    var ww = max(0,image_xscale*16); //wall width
    if (abs(vx) < 1000 && abs(vy) < 1000){
      //draw_rectangle(vx,vy,vx+wall.image_xscale*16-1,vy+(wall.image_yscale*16)-1,true);
      if (vy > 0){
        shadow_line(vx+3,vy+3,vx+ww-3,vy+3,inst.radius,inst.radius);
      }else{
        shadow_line(vx+3,vy,vx+ww-3,vy,inst.radius,inst.radius);
      }
      var to = -3+(wall.wall_up != -1)*16; //top y
      var wh = max(0,wall.image_yscale*16); //wall height
      shadow_line(vx+3,vy+to,vx+3,vy+wh,inst.radius,inst.radius);
      shadow_line(vx+wall.image_xscale*16-3,vy+to,vx+wall.image_xscale*16-3,vy+wh,inst.radius,inst.radius);
    }
  }
  
  draw_set_blend_mode(bm_normal);
  surface_reset_target();
  inst.sprite = sprite_create_from_surface(surf,0,0,inst.radius*2,inst.radius*2,0,0,inst.radius,inst.radius);
  surface_free(surf);
}
