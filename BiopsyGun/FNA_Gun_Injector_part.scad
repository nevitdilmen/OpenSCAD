$fn=50;
difference (){
difference (){
difference (){
difference (){
difference (){
difference (){
difference (){
union() {
union() {
union() {
minkowski (){
union (){
cylinder (d=18, h=30);
scale([0.8,1,1])
cylinder (d=63, h=5);
}
sphere(5);
}
//Halka çevreleyici
translate([0,0,10])
difference(){
cylinder (d=39, h=5);
translate([0,0,5])
rotate_extrude()
translate([19,0,0])
circle(d=10);
}
}
}
}
translate([29,0,15])
cube ([30,70,40], center=true);
}


translate([-29,0,15])
cube ([30,70,40], center=true);
}

//Çıkmalık kısım enjektör yuvası
translate ([0,0,-6])   
cylinder (d=18, h=50);
}
//Çıkmalık kısım yuva girişi
translate ([0,-8.5,-6])   
cube([20,17,50]);
}

//Yan delik 1
translate ([0,-27,2]){
rotate([0,180,0]){

cylinder (h=30, d=6.5);
}
}
}

//Yan delik 2
translate ([0,27,2]){
rotate([0,180,0]){
cylinder (h=30, d=6.5);
}
}
}

//Enjektör kenarı yarığı 
translate ([5,0,2]){
cube([30,35,4], center=true);
}
}