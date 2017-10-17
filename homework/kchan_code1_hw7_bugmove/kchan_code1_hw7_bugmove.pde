class Bug {
  
 float x = random(50,50)  ;
 float y = random(50,50) ;
 float XSpeed =random(-5,5);
 float YSpeed =random(-5,5);
 
 float XRight = 600;
 float XLeft=0;
 float YTop=0;
 float YBottom=600;

 Bug() {
   
 }
 
 void display(){
   fill(127,0,0);
   ellipse(x-10,y-10,20,20);
   ellipse(x,y,20,20);
   ellipse(x+10,y+10,15,15);
   strokeWeight(5);
   line(x+23,y+17,x+15,y+3);
   line(x+17,y+23,x+3,y+15);
 }


 void draw(){
   x=x+XSpeed;
   y=y+YSpeed;
     
 if(y < YTop){
     YSpeed = YSpeed *-1;
     y= YTop;
   }
   if(x<XLeft){
     XSpeed = XSpeed *-1;
     x = XLeft;
   }}
   
void mousePressed(){
 if(x>600 || y>600){
    x=random(50,50);
    XSpeed =random(-5,5);
    y=random(50,50);
  YSpeed =random(-5,5);}
}
void control() {
  if (key == 'z' ) {
    x -= 10;
    y -= 10; }
  else if (key == 'x'){
    x += 10;
    y += 10; }
}
    

}
   