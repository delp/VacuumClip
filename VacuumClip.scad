$fn = 30;

module screwHole() {
    union() {cylinder(r=2, h = 44);
    translate([0,0,32 ]) cylinder(r = 6, h = 14);    
    }
}



module clip() {
    union() {
    translate([0,0,0])  cube([44, 20, 20]);
    translate([24,0, 20]) cube([20,20,40]);
} }

difference() {
    clip();   
    translate([0, 10, 10]) rotate([0,90,0]) screwHole();
    
}