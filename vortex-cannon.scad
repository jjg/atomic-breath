/*
Driver
mounting bushing(?) outside diameter: 90
mounting bushing(?) height: 3.67
mounting flange: 92.5x92.5x0.88
*/

DRIVER_DIAMETER = 90;
TOLERANCE = 1;
WALL_THICKNESS = 3;

//difference(){
    // outer wall
    cylinder(
        r1=(DRIVER_DIAMETER/2)+WALL_THICKNESS,
        r2=((DRIVER_DIAMETER*.75)/2)+WALL_THICKNESS,
        h=DRIVER_DIAMETER*1.5
    );
    