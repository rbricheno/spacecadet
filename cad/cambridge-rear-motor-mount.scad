difference() {
import("Rear_Motor_Mount_NEMA17_x1.stl");
translate([50,81,3])
linear_extrude(3)
text( "Up ^", size= 6);  
}

//color("pink")
//translate([40,21.5,0])
//cube([15,55,15]);

// bang on, needs cutouts
//translate([0,98,0])
//scale([1,-1,1])
//import("Rear_Motor_Mount_NEMA17_x1.stl");






difference() {
translate([0,98,0])
scale([1,-1,1])
import("Rear_Motor_Mount_NEMA17_x1.stl");
    
    
//color("pink")
//translate([20,26.5,-1])
//cube([80,75,20]);    

color("pink")
translate([39,27,-1])
cube([40,75,20]);    

color("pink")
translate([37.75,26.5,10])
cube([42.5,75,20]);    
}


//color("pink")
//translate([38,26.5,-1])
//cube([42,75,20]);    
