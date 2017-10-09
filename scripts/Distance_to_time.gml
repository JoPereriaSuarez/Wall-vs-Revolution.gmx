/// CONVERT DISTANCE TO TIME IN SECONDS OR FPS
///ex: Distance_to_time(distance_to_point(x,obj_coll.y),true
distance = argument0;
to_seconds   = argument1; 

if(to_seconds == false){
    return distance * C_TIME_FPS;
}
else{
///we use default room speed value  
    return (distance * C_TIME_FPS)/30;
}
