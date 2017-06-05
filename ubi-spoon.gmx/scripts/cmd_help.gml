///cmd_help(args)
if (array_length_1d(argument0) == 1){
  console_print("------ Help ------ ",c_white);
  console_print("Type help <command> to get more information about a specific command.",c_white)
  var key = ds_map_find_first(obj_controller.command_map);
  for(var i=0; i<ds_map_size(obj_controller.command_map); i++){
    var cmd = obj_controller.command_map[? key];
    console_print(cmd[? "name"]+" - "+cmd[? "description"],c_white);
    key = ds_map_find_next(obj_controller.command_map,key);
  }
}else{
  var cmdMap = obj_controller.command_map[? argument0[1]];
  if (cmdMap == undefined){
    console_print('The command "'+argument0[1]+'" does not exists',c_red);
  }else{
    console_print("Help for "+argument0[1],c_white);
    console_print(cmdMap[? "description"],c_white);
    console_print("Usage: "+cmdMap[? "usage"],c_white);
  }
}
