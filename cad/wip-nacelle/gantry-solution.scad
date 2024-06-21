module motor(){
color("grey")
cube([37,37,38],center=true);
//top of motor
translate([0,0,19+6.75/2])
color("silver")
cube([37,37,6.75],center=true);
//bottom of motor
translate([0,0,0-( 19+7/2)])
color("silver")
cube([37,37,7],center=true);
}

//translate([26,0,18.25])
//color("red")
//cube([15,200,15],center=true);

translate([0,180/2 + 37/2,0])
motor();

translate([0,0 - (180/2 + 37/2),0])
motor();



module heatsink() {
color("orange")
//cube([35,11,35],center=true);
translate([0,4.5,0])
cube([35,2,35],center=true);
color("orange")
for ( i = [0 : 34] ){
    translate([0, -1, i - 17])
    cube([35,9,0.5],center=true);
}
}

translate([-1,180/2 - 11/2, 0])
heatsink();

translate([-1,0 -(180/2 - 11/2), 0])
scale([1,-1,1])
heatsink();

module blower() {
color("grey")
cube([10,40,40],center=true);
}

/*
//lhs blower
translate([37/2 - 5 -2,180/2 - 40/2 -11, 0])
blower();

//rhs blower
translate([37/2 - 5 -2,0 - (180/2 - 40/2 -11), 0])
blower();
*/

//enclosure geometry

module enclosure() {

//spring surface
color("magenta")
translate([-1 - 5 -0.45,180/2 - 12, 0])
cube([24.1,2,40],center=true);


//top of heatsink
color("magenta")
translate([0,180/2 - 12/2, 19])
cube([37,10,2],center=true);






//bottom
color("magenta")
translate([0,180/2 - 12/2, -19])
cube([37,10,2],center=true);

// back of fan and clip holder
color("magenta")
translate([37/2 - 5 -2 + 6,180/2 - 40/2 - 12/2 - 0.1, 0])
cube([2,40+10 + 0.2 + 0.2,38],center=true);

color("magenta")
translate([37/2 - 5 -2 + 6 - 0.5,180/2 - 40/2 - 12/2 - 26 - 0.2, 0])
cube([3,1.8,38],center=true);

//top of fan
color("magenta")
translate([0 + 11.5 - 1 - 0.35,180/2 - 12/2 - 20, 19 + 2])
cube([12 + 0.7,40+10,2],center=true);

color("magenta")
difference() {
translate([0 + 11.5 - 6.1 - 0.7,180/2 - 12/2 - 20, 19 ])
cube([1.8,40+10,2],center=true);

translate([0 + 11.5 - 6.1 - 0.7,180/2 - 12/2 - 20, 19 ])
cube([3,6.05,3],center=true);
}

//bottom of fan
color("magenta")
translate([0 + 11.5 - 1 - 0.35,180/2 - 12/2 - 20, 0 - (19 + 2)])
cube([12 + 0.7,40+10,2],center=true);


color("magenta")
difference() {
translate([0 + 11.5 - 6.1 - 0.7,180/2 - 12/2 - 20,0 - 19 ])
cube([1.8,40+10,2],center=true);

translate([0 + 11.5 - 6.1 - 0.7,180/2 - 12/2 - 20,0 - 19 ])
cube([3,6.05,3],center=true);
}

color("magenta")
hull() {
translate([0 + 11.5 - 6.1 - 0.8,180/2 - 12/2 - 20 +7.75,0 - 19 ])
cube([2,9.5,2],center=true);

translate([0 + 11.5 - 6.1 - 0.8,180/2 - 12/2 - 20 +7.75 + 6.25,0 - 19 + 5.5 ])
cube([2,2,9.5],center=true);
}

color("magenta")
scale([1,1,-1])
hull() {
translate([0 + 11.5 - 6.1 - 0.8,180/2 - 12/2 - 20 +7.75,0 - 19 ])
cube([2,9.5,2],center=true);

translate([0 + 11.5 - 6.1 - 0.8,180/2 - 12/2 - 20 +7.75 + 6.25,0 - 19 + 5.5 ])
cube([2,2,9.5],center=true);
}


// spring pokey
color("magenta")
translate([0,180/2 - 15 , 0])
rotate([90,0,0])
//cylinder(d=8,h=15,$fn=64,center=true);
//compressed
cylinder(d=6,h=5,$fn=64,center=true);

//the slidey housing top
color("magenta")
difference() {
translate([0 + 11.5 - 6 - 12,180/2 - 12/2 - 20 + 4.5 , 19 ])
cube([24,19,2],center=true);

translate([0 + 11.5 - 6.1 - 0.7,180/2 - 12/2 - 20, 19 ])
cube([3,6.05,3],center=true);
}

//the slidey housing bottom
color("magenta")
translate([0 + 11.5 - 6 - 12,180/2 - 12/2 - 20 + 8, 0 - 19 ])
cube([24,10,2],center=true);

//the slidey housing outer
color("magenta")
translate([0 + 11.5 - 6 - 12 - 11,180/2 - 12/2 - 25.5 + 10,  ])
cube([2,19,40],center=true);
}

enclosure();


module housing_front_half() {


difference() {
hull() {
translate([17,0,18.25 - 20])
cube([3,60,25],center=true);

translate([17,0,18.25])
translate([-17,0,-18.25])
rotate([90,0,0])
cylinder(d=6,h=60,$fn=64,center=true);
}

translate([0,0, -10])
rotate([0,90,0])
cylinder(d=3.3,h=60,$fn=64,center=true);

translate([15.6,0, -10])
rotate([0,90,0])
cylinder(d=4,h=6.2,$fn=64,center=true);
}

union() {
//spring container bit
difference() {
translate([0,180/2 - 18.5 , 0])
rotate([90,0,0])
color("cyan")
//cylinder(d=8,h=15,$fn=64,center=true);
//compressed
cylinder(d=10,h=6,$fn=64,center=true);

translate([0,180/2 - 18.5 , 0])
rotate([90,0,0])
color("cyan")
//cylinder(d=8,h=15,$fn=64,center=true);
//compressed
cylinder(d=8.5,h=12,$fn=64,center=true);
}

translate([0,180/2 - 18 - 4.5 , 0])
rotate([90,0,0])
color("cyan")
//cylinder(d=8,h=15,$fn=64,center=true);
//compressed
cylinder(d=10,h=2,$fn=64,center=true);

//spring container chamfer bit
color("cyan")
hull() {
translate([0,180/2 - 18 - 4.5 , 0])
rotate([90,0,0])
color("cyan")
//cylinder(d=8,h=15,$fn=64,center=true);
//compressed
cylinder(d=10,h=2,$fn=64,center=true);


translate([0,180/2 - 18 - 10 , 0])
rotate([90,0,0])
color("cyan")
//cylinder(d=8,h=15,$fn=64,center=true);
//compressed
cylinder(d=6,h=2,$fn=64,center=true);
}

//connection of springs to the centre piece
difference() {
hull() {
translate([0,0,0])
rotate([90,0,0])
color("cyan")
//cylinder(d=8,h=15,$fn=64,center=true);
//compressed
cylinder(d=6,h=133,$fn=64,center=true);

difference() {
translate([-19,0,0])
rotate([90,0,0])
color("cyan")
//cylinder(d=8,h=15,$fn=64,center=true);
//compressed
cylinder(d=12,h=70,$fn=64,center=true);


translate([-27.5,0,0])
cube([14,140,14],center=true);



}
}

translate([-0,0,0])
cube([50,57,50],center=true);

}
// the clamp where it attacheds to the crossbar
//translate([-10,0,18.25])
//cylinder(d=7,h=80,$fn=32,center=true);


//top of the clamp
translate([17,0,18.25])
difference() {

color("cyan")
union(){
hull() {
cube([3,60,15],center=true);
translate([-17,0,-18.25])
rotate([90,0,0])
cylinder(d=6,h=60,$fn=64,center=true);
}
translate([0.5,0,0])
cube([3,60,2.2],center=true);
}

translate([0,-20,0])
rotate([0,90,0])
cylinder(h=20,d=3.3,$fn=32,center=true);
translate([0,20,0])
rotate([0,90,0])
cylinder(h=20,d=3.3,$fn=32,center=true);


translate([-12,-20,0])
rotate([0,90,0])
cylinder(h=20,d=6,$fn=32,center=true);
translate([-12,20,0])
rotate([0,90,0])
cylinder(h=20,d=6,$fn=32,center=true);



}

//bottom of the clamp, with cutout for wires
translate([17,0,18.25])
difference() {
hull() {
translate([-17,0,-18.25])
rotate([90,0,0])
cylinder(d=6,h=60,$fn=64,center=true);


translate([-36.6,0,-36.5])
rotate([90,0,0])
cylinder(d=2,h=60,$fn=64,center=true);



}

translate([-27,0,0])
cylinder(d=7,h=80,$fn=32,center=true);
}

//the slidey housing top
translate([0,49,0])
color("cyan")
translate([0 + 11.5 - 6 - 12 - 1 - 0.7 - 0.25,0, 19 + 2 +0.1])
cube([24.3,38,2],center=true);

//the slidey housing top
translate([0,49,0])
color("cyan")
translate([0 + 11.5 - 6 - 1 + 4,0, 19 + 4 +0.1 ])
cube([20,38,2],center=true);

//the slidey housing top
translate([0,49,0])
color("cyan")
translate([17.6, 0, 19 + 2 +0.1 + 0.5 ])
cube([1.8,38,5],center=true);





// the top inner side pieces


translate([8.5,29,14])
color("cyan")
cube([20,2,20],center=true);



hull() {
translate([-6,29,11])
color("cyan")
cube([10,2,22],center=true);


translate([-19.5,29,2])
color("cyan")
cube([2,2,40],center=true);
}
//the slidey housing back
translate([0,49,0])
color("cyan")
translate([0 - 19.6,0, -18 +0.1 + 4 + 0.2])
cube([2,38,71.6],center=true);

//the slidey housing back
color("cyan")
translate([0 - 19.6,0, -38 +0.1 + 4 + 0.2 -5])
cube([2,170,41.6],center=true);


}


//the lower hole to the back cover
translate([-0.1,0,-10])
difference() {
hull() {
translate([20.6 - 17.6 - 2 - 2 ,52.5 + 15 + 16.5-5, -20 - 30 + 1.5 + 13.5 -9])
rotate([0,90,0])
cylinder(d=6.9,h=35.2,$fn=32,center=true);

translate([20.6 - 17.6 - 2 - 2  - 35/2,52.5 + 15 + 16.5-5, -20 - 30 + 1.5 + 13.5  + 18])
rotate([0,90,0])
cylinder(d=3,h=1,$fn=32,center=true);


}
translate([20.6 - 17.6 - 2 - 2 ,52.5 + 15 + 16.5-5, -20 - 30 + 1.5 + 13.5 -9])
rotate([0,90,0])
cylinder(d=3.3,h=40,$fn=32,center=true);

translate([20.6 - 17.6 - 2 - 2  + 34,52.5 + 15 + 16.5-5, -20 - 30 + 1.5 + 13.5 -9])
rotate([0,90,0])
cylinder(d=4,h=40,$fn=32,center=true);
}



//the hole to the pitb
translate([-5.1,0,-10])
translate([-10,0,-32])
difference() {
translate([0,116.5/2,0])rotate([0,90,0])
cylinder(d=6.9,h=7.2,$fn=32,center=true);

translate([0,116.5/2,0])
rotate([0,90,0])
cylinder(d=3.3,h=40,$fn=32,center=true);

translate([18,116.5/2,0])
rotate([0,90,0])
cylinder(d=4,h=40,$fn=32,center=true);
}






}

// the front of the housing
color([0.5,0.5,1,0.5])
housing_front_half();


// the front of the housing
color([0.5,0.5,1,0.5])
scale([1,-1,1])
housing_front_half();


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



// the intake fans
color("blue")
translate([2,180/2 - 60 , -61])
cube([40,40,11.2],center=true);

color("blue")
translate([2,0 - (180/2 - 60) , -61])
cube([40,40,11.2],center=true);

// the pitb
color("orange")

translate([-10,0,-42])
difference() {
cube([3,150,20.5],center=true);
translate([0,-116.5/2,0])
rotate([0,90,0])
cylinder(h=20,d=3.3,$fn=32,center=true);
translate([0,116.5/2,0])
rotate([0,90,0])
cylinder(h=20,d=3.3,$fn=32,center=true);
}





// a spring
translate([0,0 - (180/2 - 12), 0])
rotate([90,0,0])
color("cyan")
//cylinder(d=8,h=15,$fn=64,center=true);
//compressed
cylinder(d=8,h=10,$fn=64,center=true);
