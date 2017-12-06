
include <config.scad>;
use <head.scad>;

module slice(i)
{
    scale([1, 1, material_z*100])
//    linear_extrude(material_z)
//    projection()
    intersection()
    {
        // model
        translate([0, 0, -height/2 + material_z/2 + i*material_z])
        head();
        
        // plane
        cube([
            diameter,
            diameter,
            0.01
            ], center=true);
    }
}

for (i = [0:height/material_z])
{
    //translate([i*diameter, 0, 0])
    translate([0, 0, i*material_z])
    slice(i);
}
