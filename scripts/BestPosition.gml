var x1          = argument0; //initial creation point    
var ref_x       = argument1; //point x to check the distance
var pts         = argument2; //array
var safe_dist   = argument3;
if(!is_array(pts))
{
    show_error("Best Position.pts must be an array ", true);
    exit;
}

// We create an array of distance between 
// player and the points
var dist = 0;

// Create the distance's array
for(var d = 0; d < array_length_1d(pts); d ++)
{
    dist[d] = abs(pts[d] - ref_x);
}
//show_debug_message("distances = " + string(dist));

// Choose the best distance
var length = array_length_1d(dist);
var best_index = 0;
for(i = 0; i < length; i ++)
{
    if(dist[i] <= safe_dist)
    {
        continue;
    }
    best_index = i;
    for(j = i; j < length; j ++)
    {
        if(dist[j] <= safe_dist)
        {
            continue;
        }
        if(dist[j] < dist[best_index])
        {
            best_index = j;
        }
    }
    //return the best creation point
    return pts[best_index];
}
show_error("SOMETHING IS WRONG WITH THE BEST POSITION SCRIP", true);
