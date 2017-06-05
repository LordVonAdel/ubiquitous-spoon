///console_print(text,color);
var pos = array_height_2d(obj_controller.console_lines);
obj_controller.console_lines[pos,0] = argument0;
obj_controller.console_lines[pos,1] = argument1;
if(pos >= obj_controller.console_line_number){
  console_scroll += 1;
}
