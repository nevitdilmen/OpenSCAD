//Balls
for(i = [0 : 12 : 360])
{
translate ([sin (i)*100,cos (i)*100,0])
//linear_extrude (10)
sphere (9);    
}

//Inner circle
difference (){
linear_extrude(18, center=true)
circle (100);
rotate_extrude ()
translate ([100,0,0])
circle (11);
}

//Outer circle
difference () {
difference (){
linear_extrude(18, center=true)
circle (130);
linear_extrude(40, center=true)
circle (105);
}
rotate_extrude ()
translate ([100,0,0])
circle (11);
}