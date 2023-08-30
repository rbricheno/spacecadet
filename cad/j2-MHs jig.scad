//70 mm difference jig

difference() {
import("voron0_drill_jig_7.5mm.stl", center=true);
translate([-20,0,6.9])
rotate([0,90,0])
cylinder(d=3.2,h=30,$fn=64);
}
    
difference() {
translate([70,0,0])
import("voron0_drill_jig_7.5mm.stl", center=true);

color("green")
translate([50.51 - 15,0,6.90])
cube([110 - 30,15,15],center=true);
}


difference() {
color("pink")
translate([50.51 + 4 - 15,0,6.90 - 17.8])
cube([90 -30,15,20.6],center=true);

color("blue")
translate([50.51 - 15,-12.5,6.90 - 17.8])
rotate([15,0,0])
cube([100 - 30,15,100],center=true);

color("blue")
translate([50.51 - 15,12.5,6.90 - 17.8])
rotate([-15,0,0])
cube([100 - 30,15,100],center=true);
    
translate([30,.5,-2])
linear_extrude(3)
text( "J2 MHs", size= 6);    
    
    motor_holes();
}

difference() {
big_motor_holes();
motor_holes();
};

//motor_holes();

module motor_holes () {
translate([-30,-7.5,10])
rotate([0,90,0])

{
    color("red")
translate([-4,6.65,59.55])
rotate([0,90,0])
//cylinder(d=6.2, h=40,$fn=64);
    cylinder(d=3, h=40,$fn=64);


translate([0,0,31])
color("red")

translate([-4,6.65,59.55])
rotate([0,90,0])
//cylinder(d=6.2, h=40,$fn=64); 
    cylinder(d=3, h=40,$fn=64);

translate([0,7.5,37.5])
rotate([0,90,0])
color("red")
cylinder(d=3, h=40,$fn=64); 

translate([0,7.5,37.5 + 70])
rotate([0,90,0])
color("red")
cylinder(d=3, h=40,$fn=64); 
}
}

module big_motor_holes () {
translate([-30,-7.5,-10.2])
rotate([0,90,0])

{
    color("red")
translate([-4,6.65,59.55])
rotate([0,90,0])
cylinder(d=10, h=15,$fn=64);


translate([0,0,31])
color("red")
translate([-4,6.65,59.55])
rotate([0,90,0])
cylinder(d=10, h=15,$fn=64); 
//translate([0,7.5,37.5])
//rotate([0,90,0])
//color("red")
//cylinder(d=3, h=40,$fn=64); 

//translate([0,7.5,37.5 + 70])
//rotate([0,90,0])
//color("red")
//cylinder(d=3, h=40,$fn=64); 
}
}