//Copyright 2017 Nevit Dilmen 
//

radius= 19;  
perimeter = radius*6.283;
ball =9;
//Balls
for(i = [0 : 60 : 360])
{
translate ([sin (i)*radius,cos (i)*radius,0])
//linear_extrude (10)
sphere (ball);    
}

//Inner circle
difference (){
linear_extrude(ball*2, center=true)
circle (radius);
rotate_extrude ()
translate ([radius,0,0])
circle (ball+1);
}

//Outer circle
difference () {
difference (){
linear_extrude(ball*2, center=true)
circle (radius+30);
linear_extrude(ball*3, center=true)
circle (radius+1);
}
rotate_extrude ()
translate ([radius,0,0])
circle (ball+1);
}
