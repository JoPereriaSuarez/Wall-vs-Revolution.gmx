var arr = argument0;

var best_dist;
var best_index;
var dir;
var length = array_length_1d(arr);

for(i = 0; i < length; i++){
    if(!instance_exists(arr[i])){
        continue;
    }
    if(collision_line(arr[i].x,arr[i].y,x,y,obj_wall,false,true))
    {
       // show_debug_message("DETERMINATE TARGET say: THERE'S A WALL");
        continue;
    }
    best_dist   = abs(arr[i].x - x);
    best_index = i;
//    dir = sign(array[i].x - x);
    
    for(j = i+1; j < length; j++){
        if(!instance_exists(arr[j])){
            continue;
        }
        if(collision_line(arr[j].x,arr[j].y,x,y,obj_wall,false,true))
        {
            show_debug_message("DETERMINATE TARGET say: THERE'S A WALL");
            continue;
        }
        var j_dist = abs(arr[j].x - x);
        if(j_dist < best_dist){
            best_dist   = j_dist;
            best_index = j;
        }
    }
    return arr[best_index].id;
}
if(instance_exists(obj_wall))
{
    return obj_wall.id;
}
return noone;
//show_error("THIS IS NOT SUPPOSED TO HAPPENED:  error on determinate target's script", true);

