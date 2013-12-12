

module slider() {
	difference() {
		cube([10,13,10],center=true);
		cube([20,10.5,4.5],center=true);
		translate([0,0,5])
		cube([20,7,7],center=true);
	}
	translate([0,0,-6])
	cylinder(r=2.25,h=4,center=true);
}

slider();