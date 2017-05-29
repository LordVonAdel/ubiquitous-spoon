///bind_to_string(keycode)
var str = argument0;
var type = string_char_at(str,1)
var code = real(string_copy(str,2,string_length(str)-1))
switch type{
 case "K":
  if code >= 65 and code <= 90{
   return chr(code);
  }else{
   var key = keymap[? code];
   if key == undefined{
    return string(code)
   }else{
    return key;
   }
  }
 break;
 case "M":
  if code == 0{
   return "{key.mb_left}"
  }
  if code == 1{
   return "{key.mb_right}"
  }
 break;
 default:
  return "{key.missing}"
 break;
}
