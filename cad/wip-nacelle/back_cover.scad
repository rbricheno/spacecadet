module back_cover_half() {

//wire clips

difference() {
color("green")
translate([-13,66, -51 -10])
cube([5,12,4],center=true);

color("green")
translate([-13,66, -50 -10])
cube([6,6,2],center=true);
}


// fan anti rideup feature

color("green")
translate([2.75 + 15,50, -44 - 10])
cube([10,4,2],center=true);


color("green")
translate([2.75 + 15,10, -44 -10])
cube([10,4,2],center=true);

//the bits holding the fans on
union() {
color("green")
translate([2.75,50, -56 -11.5])
cube([42.5,4,2],center=true);


color("green")
translate([2.75,51, -50 -11])
cube([42.5,2,12],center=true);


color("green")
translate([2.75,10, -56 -11.5])
cube([42.5,4,2],center=true);

color("green")
translate([2.75,9, -50 -11])
cube([42.5,2,12],center=true);

//between two fans
color("green")
difference() {
translate([2,0, -48.5 -10])
cube([41,20,2],center=true);




translate([-18.5,0, -48.5 -10])
hull() {


translate([-8,-3,0])
cylinder(r=3,h=10,$fn=32,center=true);
translate([9,-3,0])
cylinder(r=3,h=10,$fn=32,center=true);

translate([-8,3,0])
cylinder(r=3,h=10,$fn=32,center=true);
translate([9,3,0])
cylinder(r=3,h=10,$fn=32,center=true);
}

}
}

//the back cover (lower)

color("green")
    translate([23,0, -19.5 - 12.5 -5])
cube([2,110,45],center=true);


translate([2,0,0])
color("green")
difference() {
color("red")


// the upper screw tab
hull() {
translate([17.5,0, -11])
cube([2,20,15],center=true);

translate([21,0, -20])
cube([2,20,11],center=true);
}

translate([0,0, -10])
rotate([0,90,0])
cylinder(d=3.3,h=60,$fn=64,center=true);

translate([49,0, -10])
rotate([0,90,0])
cylinder(d=6.1,h=60,$fn=64,center=true);
}


// the side of the cuttout
/*
translate([0,-41.1,0])

color("green")
hull() {
color("brown")
translate([17.5,10, 1.1 - 5])
cube([2,2,26],center=true);


color("brown")
translate([23,10, 1.75 - 5])
cube([2,2,27.5],center=true);
}
*/
//the bottom of the cutout
color("green")
hull() {
color("red")
translate([19.5,0, -15.3])
cube([2,62,2],center=true);

color("red")
translate([23,0, -15.3])
cube([2,62,2],center=true);
}

// the top of the side wings
/*
color("green")
difference() {
color("green")
translate([20.6,0, 9.5])
cube([4,110,2],center=true);
color("red")
translate([23,0, 5])
cube([40,60.4,20],center=true);
}
*/
hull() {
color("green")
translate([20.5 - 1.7,42, 9.5])
cube([0.2,24,0.2],center=true);

color("green")
translate([20.5,37, 9.5 - 24.9])
cube([4,34,2],center=true);
}

//the edge of the backmost piece
color("green")
translate([20.6,54, -32])
cube([4.2,2,35],center=true);


color("green")
translate([20.6 - 17.6 - 2 - 2 + 0.05,52.5 + 15, -20 - 30 + 1.5 -10])
cube([35.1,35,2],center=true);


color("green")
translate([20.6 - 17.6 - 2 +20 - 0.5 - 1,52.5 -0.5, -20 - 30 + 1.5 - 10])
cube([8,4,2],center=true);


color("green")
// the side of the cover
difference() {
union() {
color("green")
translate([20.6 - 17.6 - 2 - 2 + 0.05,52.5 + 15 + 16.5, -20 - 30 + 1.5 + 13.5 - 5])
cube([35.1,2,36],center=true);

translate([20.6 - 17.6 - 2 - 2 - 6 -0.05,52.5 + 15 + 16.5 , -20 - 30 + 1.5 + 13.5 + 0.4])
cube([22.9,2,29],center=true);
}
translate([2 + 20.6 - 17.6 - 2 - 2,52.5 + 15 + 16.5, -20 - 30 + 1.5 + 13.5 + 15])
rotate([90,0,0])
cylinder(d=8,h=30,$fn=32,center=true);
}

// the marker for the through hole
//translate([20.6 - 17.6 - 2 - 2 ,52.5 + 15 + 16.5-5, -20 - 30 + 1.5 + 13.5 -11])
//rotate([0,90,0])
//cylinder(d=6,h=40,$fn=32,center=true);


//the bit with the hole in it (lower) (next to the bit that interfaces with the fan cowling)
difference() {
color("green")
translate([20.6 - 17.6 - 2 + 16.5 + 0.05,52.5 + 15 + 1.5, -20 - 30 + 1.5 + 13.5 - 5])
cube([1.9,32,39],center=true);
translate([20.6 - 17.6 - 2 - 2 ,52.5 + 15 + 16.5-5, -20 - 30 + 1.5 + 13.5 -9 - 10])
rotate([0,90,0])
cylinder(d=3.3,h=40,$fn=32,center=true);
}


// the little raised bit that interfaces with the fan cowling cutout

translate([0,0,-5])
hull(){
color("green")
translate([20.6 - 17.6 - 2 + 16.5 + 0.05,52.5 + 9 , -20 - 30 + 1.5 + 13.5 + 0.5])
cube([1.9,21,40],center=true);


color("green")
translate([20.6 - 17.6 - 2 + 16.5 + 0.05 +5.5,52.5 - 10 + 1 + 10.5, -20 - 30 + 1.5 + 13.5 + 0.5])
cube([1.9,2,40],center=true);
}
}


color([0.0,1,0.1,0.5])

back_cover_half();

color([0.0,1,0.1,0.5])
scale([1,-1,1])
back_cover_half();