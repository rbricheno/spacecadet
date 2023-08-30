// box zero bottom corners for cambridge pattern dueling zero
module box_zero_corner() {
translate([104.176,116.4078,56.77])
rotate([0,0,90])
rotate([0,180,0])
rotate([0,0,0])
rotate([0,15,0])
rotate([0,0,35.264])
rotate([45,0,0])
import("Top_Corner_Plus15_x2.stl");
}

module box_zero_nice_interference_fit() {

intersection() {
    box_zero_corner();
color("green")
//union() {
    translate([0,0,20])
cube([15,15,10]);
//    translate([0,0,15])
//cube([15,330,15]);
//}
}
}

//cube([15,15,100]);

//color("green")
//translate([7.5,7.5,0])
//cylinder(d=3,h=100,$fn=16);



//color("green")
//translate([7.5,37.5,0])
//cylinder(d=6,h=110,$fn=32);

    //color("green")
//translate([15 - 37.5 - 5,7.5,0])
//cylinder(d=6,h=110,$fn=32);

difference() {
translate([0,0,30])
box_zero_corner();
//color("grey")
//translate([-20,22.3,75])
//rotate([0,90,0])
//cylinder(d=21, h=40,$fn=64);
    
  translate([-30,
-1,63])
cube([100,100,80]);
    
translate([-50,-1,54])
color("cyan")
cube([40,50,43.2]);

color("pink")
translate([-20,6.65,59.55])
rotate([0,90,0])
cylinder(d=3.55, h=40,$fn=64);
    
    color("red")
translate([-4,6.65,59.55])
rotate([0,90,0])
cylinder(d=6.2, h=40,$fn=64);


// the lower right motor hole access
       color("red")
translate([-4,6.65 + 31,59.55])
rotate([0,90,0])
cylinder(d=6.2, h=40,$fn=64); 

}

module motor_corner() {
translate([27,0,134.5])
rotate([270,90,0])
import("Motor_Corner_Screw_In_NEMA17_x2.stl");
}

difference() {
    motor_corner();
    cube([15,15,100]);
color("orange")
translate([0,15,0])
cylinder(d=1.5,h=110,$fn=32);   
   
       color("red")
translate([-4,6.65,59.55])
rotate([0,90,0])
cylinder(d=6.2, h=40,$fn=64); 
    
    translate([0,0,31])
       color("red")
translate([-4,6.65,59.55])
rotate([0,90,0])
cylinder(d=6.2, h=40,$fn=64); 
    
    
    color("green")
translate([7.5,37.5,0])
cylinder(d=6,h=110,$fn=32);

    color("green")
translate([15 - 37.5 - 5,7.5,0])
cylinder(d=6,h=110,$fn=32);

//cut off bits of the skirt
translate([-115,-1,21])
cube([80,80,80]);

translate([-1,45,21])
cube([80,80,80]);


    
}




// fill in the space near the top motor hole...
difference() {
translate([-10,8.5,82])
cube([10,5,18]);
    color("orange")


    
    translate([0,0,31])
       color("red")
translate([-14,6.65 ,59.55])
rotate([0,90,0])
cylinder(d=6.2, h=40,$fn=64); 
}



difference() {
translate([-10,12,50])
cube([10,3,50]);
    color("orange")
    
translate([0,15,0])
cylinder(d=1.5,h=110,$fn=32); 

color("grey")  
translate([-20,22.3,75])
rotate([0,90,0])
cylinder(d=22.5, h=40,$fn=64);
}


difference() {
translate([-10,2,63])
cube([10,13,25]);
    color("orange")
    
translate([0,15,0])
cylinder(d=1.5,h=110,$fn=32); 

color("grey")   
translate([-20,22.3,75])
rotate([0,90,0])
cylinder(d=22.5, h=40,$fn=64);
}


difference() {
translate([-10,0.5,93])
cube([10,14,7]);
    color("orange")
    
translate([0,15,0])
cylinder(d=1.5,h=110,$fn=32); 

color("grey")
translate([-20,22.3,75])
rotate([0,90,0])
cylinder(d=22.5, h=40,$fn=64);
    
translate([0,0,31])
color("red")

translate([-4,6.65,59.55])
rotate([0,90,0])
cylinder(d=6.2, h=40,$fn=64); 

}
//color("orange")
//translate([0,15,0])
//cylinder(d=1.5,h=110,$fn=32);

//color("grey")
//translate([-20,22.3,75])
//rotate([0,90,0])
//cylinder(d=21, h=40,$fn=64);

module top_runner_side() {
translate([-17.5,7.5,45 + 55])
color("pink")
hull() {
cube([34.5,3.5,0.01],center=true);
translate([0,0,0.7])
cube([33.5,2.5,0.01],center=true);
}
}

module top_runner_front() {
translate([7.5,15 + 15 + 7.5,45 + 55])
color("pink")
hull() {
cube([3.5,29.5 - 15,0.01],center=true);
translate([0,0,0.7])
cube([2.5,28.55 - 15,0.01],center=true);
}
}


difference() {
top_runner_front();
    color("green")
translate([7.5,37.5,0])
cylinder(d=6,h=110,$fn=32);
    

}

difference() {
top_runner_side();
        color("green")
translate([15 - 37.5 - 5,7.5,0])
cylinder(d=6,h=110,$fn=32);
    
    translate([15 - 37.5 +3,7.5,0])
cylinder(d=6,h=110,$fn=32);
}

// TO DO add a front runner.

hull() {
translate([-34.5,0.5,45.5])
cylinder(h=54,d=1,$fn=6);

translate([-33,0.5,45.5])
cylinder(h=54,d=1,$fn=6);
}
