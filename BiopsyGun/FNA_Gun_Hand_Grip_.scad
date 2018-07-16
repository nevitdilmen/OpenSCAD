$fn=50;

//Yan oluk 1
difference() {

//Yan oluk 2
difference() {

translate([-6,-5,0]){
rotate([0,90,0]){
minkowski(){

difference() {
difference() {

cylinder(h=96, d=18);

translate ([5,-10,-1])
cube([5,20,98]);
}

translate ([-10,-10,-1])
cube([5,20,98]);
}
sphere(2);
}
}
}
//Yan oluk 1
translate ([0,0,0]){
rotate([90,0,0]){

cylinder (h=30, d=6.5);
}
}
}
//Yan oluk 2
translate ([54,0,0]){
rotate([90,0,0]){
cylinder (h=30, d=6.5);
}
}
}