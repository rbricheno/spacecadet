module top_runner_side() {
translate([-12.5,7.5,45 + 55])
color("pink")
hull() {
cube([24.5 ,3.5,0.01],center=true);
translate([0,0,0.7])
cube([23.5 ,2.5,0.01],center=true);
}
}

module top_runner_front() {
translate([7.5,15 + 15 + 5 + 2.5,45 + 55])
color("pink")
hull() {
cube([3.5,19.5 - 10 + 5,0.01],center=true);
translate([0,0,0.7])
cube([2.5,18.55 - 10 + 5,0.01],center=true);
}
}

difference() {

union() {

top_runner_front();

top_runner_side();

//translate([-40 + 15,0,92])
//cube([40,40,8]);

hull() {
translate([-40 + 15,0,92])
cube([40,15,8]);



translate([-40 + 15,0,92 - 50 + 8 + 1])
cube([40,4,1]);
}


hull() {
translate([0,0,92])
cube([15,45,8]);

translate([0 + 11,0,92 - 50 + 8 + 1])
cube([4,45,1]);
}

hull() {
translate([-19 + 15 - 1,19 + 1 + 1.3,53+ 3])
cylinder(d=40,h=4,$fn=256,center=true);

translate([-15 + 15 - 1,15 + 1 + 2.5,98])
cylinder(d=22,h=4,$fn=256,center=true);
}

translate([-40 + 15,0,92 - 50 + 8])
cube([40,45,8]);

}

holies();

chamfers();
}





module holies() {

translate([-19.5,7.5,45 + 30])
holy();

//translate([-7,7.5,45 + 30])
//holy();

// bastard can't be that close! T nuts are 15mm wide!
//translate([7.5,35,45 + 30])
    translate([7.5,37.5,45 + 30])
holy();




translate([7.5,7.5,45 + 30])
holy();


translate([-5,20,112])
cylinder(d=10,h=108,$fn=6,center=true);
translate([-5,20,53])
cylinder(d=5,h=128,$fn=128,center=true);
}
module chamfers() {

translate([20,0,75])
rotate([0,0,45])
cube([20,10,55],center=true);

translate([20,45,75])
rotate([0,0,45 + 90])
cube([20,10,55],center=true);

translate([-25,50,75])
rotate([0,0,45 + 180])
cube([20,10,55],center=true);

translate([-30,0,75])
rotate([0,0,45 + 270])
cube([20,10,55],center=true);
}

module holy() {
    color("blue")
cylinder(d=3.1,h=60,$fn=64,center=true);
color("blue")
hull() {

translate([0,0,2])    
cylinder(d=3.1,h=38,$fn=64,center=true);

translate([0,0,-30])
cylinder(d=6.2,h=34 + 60,$fn=64,center=true);
}

}