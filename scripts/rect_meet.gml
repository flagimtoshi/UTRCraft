///rect_meet( x, y, width, height, target_x, target_y );
/*if (((argument[0]<argument[4]) and (argument[1]<argument[5]))
   and 
   ((argument[2]>argument[4]) and (argument[3]>argument[5])))
{*/
if (argument4 > (argument0) 
and argument5 > argument1
and argument4 < (argument0 + argument2) 
and argument5 < argument1 + argument3)
{
   return true;
}else{
   return false;
}
