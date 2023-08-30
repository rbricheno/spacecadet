//132 mm difference jig

difference() {
import("voron0_drill_jig_7.5mm.stl", center=true);
    
translate([-20,0,6.9])
rotate([0,90,0])
cylinder(d=3.2,h=30,$fn=64);    
}
difference() {
translate([102 + 30,0,0])
import("voron0_drill_jig_7.5mm.stl", center=true);

color("green")
translate([50.51 + 15,0,6.90])
cube([113 + 30,15,15],center=true);
}


difference() {
color("pink")
translate([50.51 + 4+1 + 15,0,6.90 - 17.8])
cube([92 + 30,15,20.6],center=true);

color("blue")
translate([50.51 + 15,-12.5,6.90 - 17.8])
rotate([15,0,0])
cube([102 + 30,15,100],center=true);

color("blue")
translate([50.51 + 15,12.5,6.90 - 17.8])
rotate([-15,0,0])
cube([102 + 30,15,100],center=true);
    
translate([30 + 15,-2.8,-2])
linear_extrude(3)
text( "J1 132mm", size= 6);    
}