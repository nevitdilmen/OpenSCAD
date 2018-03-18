//© 2017 Nevit Dilmen 
//  Is licensed under the Creative Commons - Attribution - Share Alike license. 

$fn=100;

rotate_extrude (angle=90)
translate ([10,0,0]) 
difference () {

minkowski()
{
text ("NEVIT");
circle (3);
}
minkowski()
{
text ("NEVIT");
circle (0.5);
}
}