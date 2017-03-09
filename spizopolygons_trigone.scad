//© 2017 Nevit Dilmen CC4.0 Attribution, Share-alike

$fn=300;
heightt=90; //mm Object height
rotation=360; //degree
thickness=0.8; //mm Object wall thichness. 
diameter=60; //Polygon diameter mm
base=2; // mm Base thickness
space=1.5; //this is about friction. Space between two shapes in mm. Larger for low poly 2.6 for poly=3
poly =6; // Number of polygon sides. Should be an integer equal or larger than 3. 

// External shape
difference () {
linear_extrude(height = heightt, center = false, convexity = 10, twist = rotation)
circle(d=diameter,center=true,$fn=poly);

translate([0,0,base])
rotate([0,0,-1*rotation/heightt*base])
linear_extrude(height = heightt, center = false, convexity = 10, twist = rotation)
circle(d=diameter-thickness,center=true,$fn=poly);
}

// Internal shape
translate([diameter*2,0,0])
difference () {
linear_extrude(height = heightt, center = false, convexity = 10, twist = rotation)
circle(d=diameter-thickness-space,center=true,$fn=poly);
translate([0,0,base])
rotate([0,0,-1*rotation/heightt*base])
linear_extrude(height = heightt, center = false, convexity = 10, twist = rotation)
circle(d=diameter-thickness*2-space,center=true, $fn=poly);
}
// Base
translate([diameter*2,0,0.5])
minkowski() {
linear_extrude(0.1, center = false)
circle(d=diameter,center=true, $fn=poly);
sphere (0.5);
}
