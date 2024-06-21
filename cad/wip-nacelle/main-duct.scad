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
