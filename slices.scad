
include <config.scad>;
use <head.scad>;


for (i = [0:5])
{
    translate([i*diameter, 0, 0])
    linear_extrude(material_z)
    projection()
    intersection()
    {
        // model
        translate([0, 0, -height/2 + i*material_z])
        head();
        
        // plane
        cube([
            diameter,
            diameter,
            material_z
            ], center=true);
    }
}
