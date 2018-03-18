#Tombul vase
#(c)2017 Nevit Dilmen

a=10;
b=10;
c=20;

difference () {
difference (){
hull(){
cube([a,b,c], center=true);
sphere(a, $fn=200);  
}

hull(){
cube([a-2,b-2,c-2], center=true);
sphere(a-2, $fn=200);  
}
}
translate ([-4,-4,5])
cube (a-2,a-2,a-2 );
}
