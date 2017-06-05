//cmd_tp(args)
var args = argument0;
if (string_char_at(args[1],1) == "+" ||string_char_at(args[1],1) == "-"){
  obj_player.x += real(args[1])*16;
}else{
  obj_player.x = real(args[1])*16;
}
if (string_char_at(args[2],1) == "+" || string_char_at(args[2],1) == "-"){
  obj_player.y += real(args[2])*16;
}else{
  obj_player.y = real(args[2])*16;
}
console_print("Teleported to "+string(obj_player.x/16)+", "+string(obj_player.y/16), c_white);
