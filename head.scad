
height = 30;
diameter = 50;
cutout_x = 5;
cutout_y = 5;
material_z = 3;

$fn=500;

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
