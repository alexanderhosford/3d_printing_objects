//A simple arm object that can be parameterised for use in the Scott-Russel mechanism
//Alexander Hosford
//alexanderhosford@gmail.com
//November 2013

//Electribe MkII dimensions
//[285,209,1]
//[289,214,1]

use <MCAD/boxes.scad>
use <slider.scad>

$fa=0.5;
$fs=0.1;

module fixed_arm() {
	roundedBox([214,10,4],5,true);
	translate([-102,0,3.5])
	cylinder(r=2.25,h=4,center=true);
}

module pivot_arm() {
	difference() {
		roundedBox([107,10,4],5,true);
		translate([-48.5,0,0])
		cylinder(r=2.5,h=10,center=true);
		translate([48.5,0,0])
		cylinder(r=2.5,h=10,center=true);
	}
}

module lift_arm() {
	difference() {
		roundedBox([214,10,4],5,true);
		translate([102,0,0])
		cylinder(r=2.5,h=10,center=true);
	}
	translate([0,0,3.5])
	cylinder(r=2.25,h=4,center=true);
}

fixed_arm();

rotate([180,0,0])
translate([0,0,-60])
lift_arm();

translate([0,0,11])
pivot_arm();

module sliding_arm() {}

//rotate([0,90,0])
//import("mk2.stl");

module mk2_side_view() {
	projection(cut = true) 
	rotate([0,90,0])
	import("mk2.stl");
}


rotate([0,0,90])
color("light blue")
mk2_side_view();

translate([0,43,0])
rotate([0,0,90])
color("dark blue")
mk2_side_view();




rotate([0,180,0])
%slider();