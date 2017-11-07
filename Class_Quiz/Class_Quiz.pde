int x= 330;
int y= 150;
int w= 50;
int h= 50;
float[] balls= new float [50];
float[] BXSpeed = new float[50];
float[] BYSpeed = new float[50];
float[] BX = new float[50];
float[] BY = new float[50];
int R = 25;
float speed =0;
float gravity= 0.1;
boolean value=false;

void setup(){
  size(700,700);
  background(100,103,90);
 
  for (int i = 0; i < 50; i++) {
  BX[i] = random(x,y);
  BY[i] = random(x,y);
  BXSpeed[i] = random(1,6);
  BYSpeed[i] = random(1,6);
  
}
}

void draw(){
  fill(240,200,190);
  noStroke();
 ellipse(x,y,w,h);
 
 if(mouseX> x -(w/2) && mouseX <x + (w/2) && mouseY > y - (w/2) && mouseY< y+(w/2)){
   value =true;
   fill(210,160,215);
   noStroke();
   ellipse(x,y,w,h);
 }

}

void mousePressed(){
   if(mouseX> x -(w/2) && mouseX <x + (w/2) && mouseY > y - (w/2) && mouseY< y+(w/2)){
     value =true;
     
     for (int i = 0; i < 50; i++){
  
    fill(random(250),random(90),random(130));
    ellipse(BX[i],BY[i], R,R);
    speed=speed +gravity;
   
    }
}}
     