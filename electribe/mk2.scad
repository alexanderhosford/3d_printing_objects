//Placeholder object for a MKII Electribe unit
//Alexander Hosford
//alexanderhosford@gmail.com
//November 2013


module top_plate() {
	translate([0,0,39.025])
	cube([295,220,2.05],center=true);
}

module unit() {
	hull() {
		translate([0,0,38])
		cube([285,209,1],center=true);
		cube([289,214,1],center=true);
	}
}

module mk2() {
	color("black")
	top_plate();
	color("dark gray")
	unit();
}

module seq_button() {
}

module buttons() {
}

module knob() {
}

module knobs() {
}

mk2();