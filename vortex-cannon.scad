/*
Driver specs:
mounting bushing(?) outside diameter: 90
mounting bushing(?) height: 3.67
mounting flange: 92.5x92.5x0.88
*/

DRIVER_DIAMETER = 90;
BUSHING_HEIGHT = 4;
TOLERANCE = 1;
WALL_THICKNESS = 3;

$fn=50;

// TODO: Mounting flange
// TODO: smoke manifold
// TODO: LED mount(s)

// main body
difference(){
    // outer wall
    cylinder(
        r1=(DRIVER_DIAMETER/2)+WALL_THICKNESS,
        r2=((DRIVER_DIAMETER*.75)/2)+WALL_THICKNESS,
        h=DRIVER_DIAMETER*1.5
    );
    
    // cut-out
    cylinder(
        r1=(DRIVER_DIAMETER/2)+TOLERANCE,
        r2=((DRIVER_DIAMETER*.75)/2)+TOLERANCE,
        h=DRIVER_DIAMETER*1.5
    );
    
    // bushing cut-out
    cylinder(
        r=(DRIVER_DIAMETER/2)+TOLERANCE,
        h=BUSHING_HEIGHT
    );
}

// nozzle
translate([0,0,DRIVER_DIAMETER*1.5]){
    difference(){
        cylinder(
            r=((DRIVER_DIAMETER*.75)/2)+WALL_THICKNESS,
            h=WALL_THICKNESS*2
        );
        cylinder(
            r=DRIVER_DIAMETER/4,
            h=WALL_THICKNESS*2
        );
    }
}

    