///draw_rectangle_colour_ext(x1,y1,x2,y2,color,width)

x1 = argument0;

y1 = argument1;

x2 = argument2;

y2 = argument3;



color = argument4;

width = argument5;



draw_set_color(color);

draw_rectangle(x1,y1,x2,y2,true);

var i = 0;

do
{

    i += 1;

    draw_rectangle(x1-i,y1-i,x2+i,y2+i,true);

}
until(i = width);


