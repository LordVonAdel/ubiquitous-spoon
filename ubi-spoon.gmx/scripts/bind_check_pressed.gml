///bind_check_pressed(key)
var key = argument0;
if (bind[? key] != undefined){
  for (i=0; i<ds_list_size(bind[? key]); i+=1){
    var F = string(ds_list_find_value(bind[? key],i));
    var T = string_char_at(F,1);
    var N = real(string_copy(F,2,string_length(F)-1));
    if (keyboard_check_pressed(N) and T == "K"){
     return true;
    }
    if (gamepad_button_check_pressed(0,N) and T == "G"){
      return true;
    }
    if (mouse_check_button_pressed(N) and T == "M"){
      return true;
    }
  };
}
//*/
return false;
