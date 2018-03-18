echo ("Pyramid Ball Puzzle");
echo ("Copyright 2017 Nevit Dilmen");
echo ("Creative Commons Attribution Share Alike");

radius =7; // Ball Radius
$fn =40;

for (j = [0:1]){
translate ([radius,-0.5+radius*2.5*j,-radius])
cube ([8*radius,1,0.2]);
translate ([0,radius*2.5*j,0])
for (i = [1:4])
{
translate ([i*1.95*radius,0,0])
sphere (radius);
}
}
for (j = [1:4]){
translate ([radius,-0.5+radius*-2.5*j,-radius])
cube ([6*radius,1,0.2]);
translate ([0,radius*-2.5*j,0])
for (i = [1:3])
{
translate ([i*1.95*radius,0,0])
sphere (radius);
}
}
for (i = [1:2:8]){
translate ([i*radius,-11*radius,-radius])
cube ([1,14*radius,0.2]);
}
