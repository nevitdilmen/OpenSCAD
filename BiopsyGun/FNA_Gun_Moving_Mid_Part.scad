$fn=50;
//Yan oluklar Diff
difference (){
difference (){
// Enjektör kolu yarığı 
difference (){
// Enjektör kolu hafası yarığı 
difference (){
//Delik ile beraber 
minkowski () {
difference (){

translate ([-15.5,-4,0]){
cube ([50,36,12]);
}

//Orta parçadan çıkacak 39*20*14  +2, 41*22*18 olmalı 
translate ([0,0,-1]){
union (){
union (){
translate ([0,-2,0]){
cube ([19,24,18]);
}
translate ([0,10,0]){
cylinder(h=18,d=24);
}
}

translate ([19,10,0]){
cylinder(h=18,d=24);
}
}
}
// Orta 
}
sphere(2);
}
//Delik ile beraber 

translate ([-3.5,25,-2]){
cube ([26,2,18]);
}

// Enjektör kolu hafası yarığı 
}

translate ([2,25,-2]){
cube ([15,20,18]);
}
}
/* Orts ölçer
translate ([9.5,9.5,-2]){
cube ([1,30,1]);
}
*/

//Yan oluk 1
translate ([-17.5,40,6]){
rotate([90,0,0]){

cylinder (h=60, d=6.5);
}}
}
//Yan oluk 2
translate ([36.5,40,6]){
rotate([90,0,0]){
cylinder (h=60, d=6.5);
}}
}