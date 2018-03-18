echo ("Dus basligi");
echo ("Copyright 2017 Nevit Dilmen");
echo ("Creative Commons Attribution Share Alike");

// Variables
$fn=50;
hole1= 1.2;
hole2= 0.7;
// Code

difference () {

union () {
union () {
linear_extrude (2) { 
circle (d=57) ;
}

linear_extrude (3.5) { 
circle (d=53) ;
}
}
linear_extrude (5) { 
circle (d=50) ;
}
}
translate ([0,0,-1])
cylinder (h =7, r1=hole1+0.3, r2=hole2+0.3);
for (i=[0:5]){
rotate (60*i)
translate ([7,0,0]) 
rotate ([0,5,0])
translate ([0,0,-1])
cylinder (h =7, r1=hole1+0.2, r2=hole2+0.2);
}
for (i=[0:11]){
rotate (30*i)
translate ([14,0,0]) 
rotate ([0,10,0])
translate ([0,0,-1])
cylinder (h =7, r1=hole1+0.1, r2=hole2+0.1);
}

for (i=[0:17]){
rotate (20*i)
translate ([21,0,0])
rotate ([0,15,0]) 
translate ([0,0,-1])
cylinder (h =7, r1=hole1, r2=hole2);
}
}

//cylinder (h =12, r1=hole1, r2=hole2, center=true);
//translate ([0,0,5])
//sphere (2);