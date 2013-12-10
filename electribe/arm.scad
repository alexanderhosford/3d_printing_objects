//A simple arm object that can be parameterised for use in the Scott-Russel mechanism
//Alexander Hosford
//alexanderhosford@gmail.com
//November 2013

//default dimensions for an arm
arm_length = 100;
arm_height = 10;
arm_thickness = 4;

module center_arm() {
	cube([arm_length, arm_height, arm_thickness],center=true);
}

module end_ring() {
	difference() {
		cylinder(r=10,h=arm_thickness,center=true);
		cylinder(r=5,h=arm_thickness+1,center=true);
	}
}

module arm(a_l=arm_length,a_h=arm_height,a_t=arm_thickness) {
	union(){
		center_arm();
		
		translate([-((a_l/2)+5),0,0])
		end_ring();

		translate([(a_l/2)+5,0,0])
		end_ring();
	}
}

arm();