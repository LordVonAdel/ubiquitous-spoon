///lang_get(key)
var val = langMap[? argument0];
if val != undefined{
 return langMap[? argument0]
}else{
 return "Missing Key: "+string(argument0)
}
