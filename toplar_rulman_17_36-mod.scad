echo ("Copyright 2017 Nevit Dilmen");
#Ballbearings for 3D printing 

$fn=50;
radius= 16.3;  
perimeter = radius*6.283;
ball =5;
//Balls
for(i = [0 : 36 : 360])
{
translate ([sin (i)*radius,cos (i)*radius,0])
//linear_extrude (10)
sphere (ball);    
}
difference (){

//Inner circle
difference (){
linear_extrude(ball*2, center=true)
circle (radius);
rotate_extrude ()
translate ([radius,0,0])
circle (ball+0.4);
}
linear_extrude (50)
circle (5);
sphere (20);
}

//Outer circle
difference () {

hull () {
translate ([-32,0,0])
sphere (5);
hull () {
translate ([32,0,0])
sphere (5);
difference (){
linear_extrude(ball*2, center=true)
circle (radius+10);
linear_extrude(ball*3, center=true)
circle (radius+1);
}
}}
rotate_extrude ()
translate ([radius,0,0])
circle (ball+0.4);
}

//Raft line to stabilize the balls during printing
translate ([0,0,-ball+0.2])
rotate_extrude ()
translate ([radius,0,0])
square([0.4,0.2],center=true);
