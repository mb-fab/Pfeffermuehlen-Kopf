
include <config.scad>;

module head()
{
    difference()
    {
        scale([
            diameter/2,
            diameter/2,
            height/2
            ])
        sphere();
        
        cube([
            cutout_x,
            cutout_y,
            height
            ], center=true);
    }
}

head();
