//A really simple object to stick to your desk and catch a cable when you unplug it
//Alexander Hosford
//alexanderhosford@gmail.com
//November 2013

$fa=0.5;
$fs=0.5;

difference() {
	sphere(12.5);
	
	translate([0,0,-6.5])
	cube([26,26,13],center=true);

	translate([0,0,7.5])
	rotate([0,90,0])
	scale([1.3,1,1])
	cylinder(r=4, h=30, center=true);
}

